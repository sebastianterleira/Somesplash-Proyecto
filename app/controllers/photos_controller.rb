class PhotosController < ApplicationController
  def new
    @photo = Photo.new
    @category = Category.find(params[:category_id])
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to categories_path(@photo.category)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @photo = Photo.find(params[:id])
    @category = @photo.category
  end

  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      redirect_to category_path(@photo.category)
    else
      render "edit", status: :unprocessable_entity
    end
  end

  def show
    @photo = Photo.find(params[:id])
    @comments = @photo.comments
  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    redirect_to category_path(@photo.category), status: :see_other
  end

  def init_search
    @photo = Photo.new
  end

  def search
    @query = params[:query].downcase
    @photos = Photo.where("LOWER(title) LIKE ?", "%#{@query}%")
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :description, :category_id, :cover)
  end
end
