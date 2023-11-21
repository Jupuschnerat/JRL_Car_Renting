class CarsController < ApplicationController
  before_action :set_car, only: %i[ show edit update destroy ]

  # GET /cars
   def index
    @cars = Car.all
  end

  # GET /cars/1
  def show
  end

  # GET /cars/new
  def new
    @car = Car.new
  end

  # POST /cars
  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to cars_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /cars/1/edit
  def edit
  end

  # PATCH/PUT /cars/1
  def update
    @car.update(car_params)
    redirect_to cars_path(@cars)
  end

  # DELETE /cars/1
  def destroy
    @car.destroy
    redirect_to cars_path
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end
  def car_params
    params.require(:car).permit(:plate, :model, :city, :price)
  end
end
