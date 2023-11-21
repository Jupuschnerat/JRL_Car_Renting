class BookingsController < ApplicationController
  before_action :set_booking, only: %i[ show edit update destroy ]

  # GET /bookings
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  def show
  end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # POST /bookings
  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path(@flat)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # GET /bookings/1/edit
  def edit
  end

  # PATCH/PUT /bookings/1
  def update
    @booking.update(booking_params)
    redirect_to bookings_path(@bookings)
  end

  # DELETE /bookings/1
  def destroy
    @car = @booking.list
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_date, :end_date) # missing booking price?
  end


end
