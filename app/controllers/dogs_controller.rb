class DogsController < ApplicationController
  def new

  end

  def create

  end

  def index

  end

  def show

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
