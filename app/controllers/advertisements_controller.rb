class AdvertisementsController < ApplicationController
  def index
    @ads = Advertisement.all
  end

  def new
    @ad = Advertisement.new
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
    @ad = Advertisement.new(ad_params)

    respond_to do |format|
      if @ad.save
        format.html { redirect_to ads_path, notice: 'Advertisement was successfully created.' }
        format.json { render json: @ad, status: :created, location: @ad }
      else
        format.html { render action: 'new' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
  end

  private

  def ad_params
    params.require(:advertisement).permit(:ad_type, :title, :description, :user_id, :car_id)
  end
end
