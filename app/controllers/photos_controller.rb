class PhotosController < ApplicationController
  def index
    @photos = Photo.where(user_id: params[:id])
  end
end
