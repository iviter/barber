class CarsController < ApplicationController
  before_action :authenticate_user!

  def index
    @cars = Car.all

    respond_to do |format|
      format.html
      format.json { render json: @cars }
    end
  end

  def new
    @car = Car.new

    respond_to do |format|
      format.html
      format.json { render json: @car }
    end
  end

  def show
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @car }
    end
  end

  def edit
    @car = Car.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @car }
    end
  end

  def update
    @car = Car.find(params[:id])

    respond_to do |format|
      if @car.update_attributes(car_params)
        format.html { redirect_to cars_path, notice: 'Car was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @car = Car.new(car_params)

    respond_to do |format|
      if @car.save
        format.html { redirect_to cars_path, notice: 'Car was successfully created.' }
        format.json { render json: @car, status: :created, location: @car }
      else
        format.html { render action: 'new' }
        format.json { render json: @car.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @car.destroy

    respond_to do |format|
      format.html { redirect_to cars_path, notice: 'Car was successfully deleted.' }
      format.json { head :no_content }
    end
  end

  private

  def car_params
    params.require(:car).permit(:body_type, :model, :brand, :fuel_type, :engine_capacity, :condition, :color, :price,
                                :year, :user_id, { pictures: [] })
  end
end
