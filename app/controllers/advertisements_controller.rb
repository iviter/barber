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
  end

  def destroy
  end
end
