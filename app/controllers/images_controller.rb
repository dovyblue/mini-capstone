class ImagesController < ApplicationController
  before_action :authenticate_admin!
  def new 
    render 'new.html.erb'
  end

  def create
    @image = Image.new(
      url: params[:image_url],
      car_id: params[:product_id]
    )
    @image.save
    redirect_to "/cars/#{params[:product_id]}"
  end
end
