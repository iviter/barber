class AdvertisementsController < ApplicationController
  before_action :find_ad, only: %i[show edit update destroy publish_ad]

  def index
    @ads = Advertisement.all
  end

  def new
    @ad = Advertisement.new
  end

  def show; end

  def edit; end

  def update
    if @ad.update_attributes(ad_params)
      redirect_to advertisement_path, notice: 'Advertisement was successfully updated.'
    else
      render action: 'edit'
    end
  end

  def create
    @ad = Advertisement.new(ad_params)

    if @ad.save
      redirect_to advertisements_path, notice: 'Advertisement was successfully created.'
    else
      render action: 'new'
    end
  end

  def publish_ad; end

  def destroy
    @ad.destroy

    redirect_to advertisements_path
  end

  private

  def ad_params
    params.require(:advertisement).permit(:ad_type, :title, :description, :body_type, :model, :brand, :fuel_type,
                                          :engine_capacity, :condition, :color, :price, :year,
                                          { pictures: [] }).merge(user_id: current_user.id)
  end

  def find_ad
    @ad ||= Advertisement.find(params[:id])
  end
end
