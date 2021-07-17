class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all
  end

  def new
    @car = Car.new
  end

  def show
    @car = Car.find(params[:id])
  end

  def edit
    @car = Car.find(params[:id])
  end

  def update
    @car = Car.find(params[:id])

    if @car.update_attributes(car_params)
      redirect_to car_path, notice: 'Car was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def create
    @car = Car.new(car_params)

    if @car.save
      redirect_to cars_path, notice: 'Car was successfully created.'
    else
      render action: 'new'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    redirect_to cars_path, notice: 'Car was successfully deleted.'
  end

  private

  def car_params
    params.require(:car).permit(:body_type, :model, :brand, :fuel_type, :engine_capacity, :condition, :color, :price,
                                :year, :user_id, { pictures: [] })
  end
end
