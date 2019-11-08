class CarsController < ApplicationController
  # before_action :redirect_if_not_washer, only: [:show, :index]

  def index
    @cars = Car.all
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
  end

  def new
    @car = Car.new
  end

  def create
    current_user.cars.create(car_params)
  end

  def car_params
    params.require(:car).permit(:make, :model, :rego, :price, :year, :suburb)
  end
end
