class Photos::ImagesController < ApplicationController
  before_action :set_photo

  def destroy

  end

  private

  def set_photo
    @photo = Photo.find(params[:photo_id])
  end


end