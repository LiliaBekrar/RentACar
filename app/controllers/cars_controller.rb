class CarsController < ApplicationController
  before_action :set_car, only: [:show, :edit, :update, :destroy]
  before_action :set_user, only: %i[new create my_cars]

  def index
    @cars = Car.all
  end

  def my_cars
    @cars = Car.where(user_id: @user.id)
  end

  def show
    @booking = Booking.new
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    @car.user = @user
    if @car.save
      redirect_to car_path(@car), notice: 'Car was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @car.update(car_params)
      redirect_to car_path(@car), notice: 'Car was successfully updated.'
    else
      render :new
    end
  end

  def destroy
    @car.destroy
    redirect_to root_url, notice: 'Car was successfully destroyed.'
  end

  private

  def set_car
    @car = Car.find(params[:id])
  end

    # Only allow a list of trusted parameters through.
  def car_params
    params.require(:car).permit(:user_id, :brand, :model, :year_of_production, :adress, :price_per_day, :photo)
  end

  def set_user
    @user = current_user
  end
end
