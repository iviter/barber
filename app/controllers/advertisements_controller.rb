class AdvertisementsController < ApplicationController
  def index
    @ads = Advertisement.all
  end

  def new
    @ad = Advertisement.new

    respond_to do |format|
      format.html
      format.json { render json: @ad }
    end
  end

  def show
    @ad = Advertisement.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @ad }
    end
  end

  def edit
    @ad = Advertisement.find(params[:id])

    respond_to do |format|
      format.html
      format.json { render json: @ad }
    end
  end

  def update
    @ad = Advertisement.find(params[:id])

    respond_to do |format|
      if @ad.update_attributes(ad_params)
        format.html { redirect_to advertisements_path, notice: 'Advertisement was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  def create
    @ad = Advertisement.new(ad_params)

    respond_to do |format|
      if @ad.save
        format.html { redirect_to advertisements_path, notice: 'Advertisement was successfully created.' }
        format.json { render json: @ad, status: :created, location: @ad }
      else
        format.html { render action: 'new' }
        format.json { render json: @ad.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @ad = Advertisement.find(params[:id])
    @ad.destroy

    respond_to do |format|
      format.html { redirect_to advertisements_path }
      format.json { head :no_content }
    end
  end

  private

  def ad_params
    params.require(:advertisement).permit(:ad_type, :title, :description, :user_id, :car_id)
  end
end
