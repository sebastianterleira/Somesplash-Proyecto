class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path(@photo)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to photos_path
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def show
    @photo = Photo.find(params[:id])
    @comments = @photo.comments
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :category, :cover)
  end
end
