class CarsController < ApplicationController
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
  end

  private

  def car_params
  end
end
