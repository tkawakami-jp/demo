class ImagesController < ApplicationController
  def index
    @images = Image.all.all.order(created_at: :desc)
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    if @image.save
      redirect_to images_path, notice: "The image has been uploaded."
    else
      render "new"
    end
  end

  def destroy
    @image = Image.find(params[:id])
    @image.destroy
    redirect_to images_path, notice:  "The image has been deleted."
  end
  
  private
  def image_params
    params.require(:image).permit(:attachment)
  end
end
