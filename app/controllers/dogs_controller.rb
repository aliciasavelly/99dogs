class DogsController < ApplicationController
  def new
    @dog = Dog.new
    render :new
  end

  def create
    @cat = Dog.new(dog_params)

    if @dog.save
      redirect_to dog_url(dog_params)
    else
      render :new
    end
  end

  def index
    @dogs = Dog.all
    render :index
  end

  def show
    @dog = Dog.find(params[:id])

    if @dog
      render :show
    else
      redirect_to dogs_url
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    @dog = Dog.find(params[:id])

    if @dog.update(dog_params)
      redirect_to dog_url(@dog)
    else
      render :edit
    end
  end

  def destroy
    @dog = Dog.find(params[:id])
    @dog.destroy
    redirect_to dogs_url
  end

  private
  def dog_params
    params.require(:dog).permit(:birth_date, :color, :name, :breed, :sex, :description)
  end
end
