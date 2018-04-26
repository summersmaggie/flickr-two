class ImagesController < ApplicationController
  before_action :authenticate_user!, :only => [:new] do
    redirect_to root_path unless current_user && current_user.admin
  end

  def index
    @images = Image.all
  end

  def show
    @image = Image.find(params[:id])
  end

  def new
    @image = Image.new
  end

  def create
    @image = Image.new(image_params)
    @image.user_id = current_user.id
    if @image.save
      redirect_to images_path
    else
      render :new
    end
  end

  private
  def image_params
    params.require(:image).permit(:title, :description, :image)
  end
end
