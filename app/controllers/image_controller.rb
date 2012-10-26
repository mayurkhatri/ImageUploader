class ImageController < ApplicationController
before_filter :authenticate_user!
  def index

  end

  def create
    debugger
    if params[:commit] == "Upload"
      respond_to do |format|
        format.html { render "upload" }
      end
    elsif params[:commit] == "Previous"

      respond_to do |format|
        format.html { render "new", object: @user }
      end
    end

  end

  def upload
    debugger
    @image = Image.new
  end

  def upload_post
    debugger
  end
end
