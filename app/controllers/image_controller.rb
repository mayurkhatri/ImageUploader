class ImageController < ApplicationController
before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @images = Image.find(:all)
    respond_to do |format|
        format.html { render "index" }
    end
  end

  def create
    @image = Image.new
    @image.title = params[:image][:title]
    @image.uploadedby = params[:image][:uploadedby]
    @image.avatar = params[:image][:avatar]
    @image.save!

    @images = Image.all
    respond_to do |format|
        format.html { render "index" }
    end
  end

  def show
    @image = Image.find(params[:id])
    respond_to do |format|
        format.html { render "show" }
    end
  end

  def upload
    @image = Image.new
    respond_to do |format|
      format.html
      format.json { render json: @image }
    end
  end

  def upload_post
    @image = Image.new
    @image.title = params[:image][:title]
    @image.avatar = params[:image][:avatar]
    @image.user_id = current_user.id
    @image.save!

    @images = Image.all
    respond_to do |format|
        format.html { render "index" }
    end
  end

  def my_images
    @images = Image.find(:all, conditions: ['user_id = ?', current_user.id])

    respond_to do |format|
        format.html { render "myimages" }
    end
  end
end
