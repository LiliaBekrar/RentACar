class BookingsController < ApplicationController
  before_action :set_booking, only: %i[confirm]
  before_action :set_car, only: %i[new create]
  before_action :set_user, only: %i[new create index]
  def new
  end

  def confirm
    @booking.accepted = true
    @booking.save
    redirect_to bookings_path, notice: 'Your booking is confirmed.'
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.car = @car
    @booking.user = @user
    if @booking.save
      redirect_to car_path(@car), notice: 'Booking was succesfully created.'
    else
      redirect_to car_path(@car), notice: 'Booking can\t be created.'
    end
  end

  def index
    @bookings = Booking.all.where(user_id: @user.id)
    @bookings = nil if @bookings == []
    @my_bookings = []
    Car.all.where(user_id: @user.id).each do |car|
      car.bookings.all.each do |booking|
        @my_bookings << booking
      end
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:starts_at, :ends_at, :car_id, :user_id, :accepted)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_car
    @car = Car.find(params[:car_id])
  end

  def set_user
    @user = current_user
  end
end
