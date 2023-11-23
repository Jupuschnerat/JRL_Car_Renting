class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  # skip_after_action :verify_policy_scoped, only: :index
  before_action :set_booking, only: [ :show ]
  before_action :set_car, only: [ :new, :create, :edit ]

  def index
    @bookings = current_user.bookings
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    @booking.user = current_user
    @booking.car = @car
    @booking.booking_price = (@booking.end_date - @booking.start_date).to_i * @booking.car.price

    if @booking.save
      flash[:flash] = 'Booking created'
      redirect_to car_path(@booking.car)
    else
      render 'cars/show'
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit
    end
  end

  def destroy
    if @booking.destroy
      redirect_to cars_path(@booking)
    else
      render :index
    end
  end


  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)

  end
end
