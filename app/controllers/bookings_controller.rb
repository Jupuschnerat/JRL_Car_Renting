class BookingsController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  skip_after_action :verify_policy_scoped, only: :index
  before_action :set_booking, only: [ :show ]
  before_action :set_car, only: [ :new, :create ]

  def index
    @bookings = current_user.bookings
  end

  def show
    authorize @booking
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    authorize @booking
    @booking.user = current_user
    @booking.car = Car.find(params[:car_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      redirect_to car_path(@car)
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
    params.require(:booking).permit(:start_date, :end_date) # missing booking price?
  # we have a user that sets the price to rent his car, and the one that rents it
  # so the user that rents can't change the :price so should we create different
  # booking_params?
  end
end
