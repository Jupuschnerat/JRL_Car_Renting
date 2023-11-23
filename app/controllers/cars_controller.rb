class CarsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]
  before_action :set_car, only: [:show, :edit, :update, :destroy]

  # GET /cars
  def index
      @cars = Car.all
    if params["query"].present?
      @cars = Car.search_by_city_model(params["query"])
      @markers = @cars.map do |car|
        {
          lng: car.longitude,
          lat: car.latitude,
          id: car.id,
          infoWindow: { content: render_to_string(partial: "/cars/map_window", locals: { car: car }) },
          # marker_html: { content: render_to_string(partial: "marker", locals: {car: car}) }
        }
    end
      @markers = @cars.map do |car|
        {
          lng: car.longitude,
          lat: car.latitude,
          id: car.id,
          infoWindow: { content: render_to_string(partial: "/cars/map_window", locals: { car: car }) },
          # marker_html: { content: render_to_string(partial: "marker", locals: {car: car}) }
        }
      end
    end
  end

  def show
  end

  def show
    @booking = Booking.new
  end

  # GET /cars/1
  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = current_user
    if @car.save!
      redirect_to car_path(@car)
    else
      render :new
    end

  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car)
    else
      render :edit
    end
  end

  def destroy
    if @car.destroy
      redirect_to cars_path(@car)
    else
      render :index
    end
  end

  def my_cars
    @user = current_user
    @cars = Car.all.filter { |car| car.user == @user}
  end

  def my_cars_show
    @user = current_user
    @car = Car.find(params[:id])
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

  def car_params
    params.require(:car).permit(:plate, :model, :description, :category, :city, :price, :photo)
  end
end
