class PhotosController < ApplicationController
  def index
  end

  def new
  end

  def create
  end

  def show
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end
