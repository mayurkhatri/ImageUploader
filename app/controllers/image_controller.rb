class ImageController < ApplicationController
before_filter :authenticate_user!, :except => [:index, :show]
  def index
    @images = Image.find(:all)
    respond_to do |format|
        format.html { render "index" }
    end
  end

  def create
    debugger
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
    @image.uploadedby = current_user.email
    respond_to do |format|
      format.html
      format.json { render json: @image }
    end
  end

  def upload_post
    debugger
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
end
