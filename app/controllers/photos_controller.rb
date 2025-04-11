class PhotosController < ApplicationController
  def index
    @photos = Photo.all.order(created_at: :desc)
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      redirect_to photos_path, notice: "Photo uploaded successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @photo = Photo.find(params[:id])
  end

  def edit

  end

  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy
    redirect_to photos_path, notice: "Das Foto wurde erfolgreich entfernt"
  end

  def create_variant
    binding.pry
     puts "[DEBUG] TURBO STREAM FORMAT: #{request.format.turbo_stream?}"
    @photo = Photo.find(params[:id])

    # Simulate generating a new variant
    # (you can replace this with real logic!)
    @new_variant = @photo.image.variant(resize_to_limit: [100 + rand(200), 100 + rand(200)]).processed

    respond_to do |format|
      format.turbo_stream
      format.html { redirect_to photo_path(@photo) } # fallback
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:title, :image)
  end
end
