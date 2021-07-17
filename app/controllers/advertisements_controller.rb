class AdvertisementsController < ApplicationController
  def index
    @ads = Advertisement.all
  end

  def new
    @ad = Advertisement.new
  end

  def show
    @ad = Advertisement.find(params[:id])
  end

  def edit
    @ad = Advertisement.find(params[:id])
  end

  def update
    @ad = Advertisement.find(params[:id])

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

  def destroy
    @ad = Advertisement.find(params[:id])
    @ad.destroy

    redirect_to advertisements_path
  end

  private

  def ad_params
    params.require(:advertisement).permit(:ad_type, :title, :description, :car_id).merge(user_id: current_user.id)
  end
end
