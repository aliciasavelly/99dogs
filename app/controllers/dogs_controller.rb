class DogsController < ApplicationController
  def new
    @dog = Dog.new
    render :new
  end

  def create

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

  end

  def update

  end

  def destroy

  end

  private
  def dog_params
    params.require(:dog).permit(:birth_date, :color, :name, :breed, :sex, :description)
  end
end
