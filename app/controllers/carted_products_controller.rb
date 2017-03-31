class CartedProductsController < ApplicationController
  before_action :authenticate_user!
  def index
    @carted_products = CartedProduct.where(status: "carted").where(user_id: current_user.id)
    if @carted_products.length == 0
      redirect_to '/cars' 
    else
      render 'index.html.erb'
    end
  end

  def create
    carted_product = CartedProduct.new(
      user_id: current_user.id,
      car_id: params[:car_id],
      quantity: params[:quantity].to_i,
      status: "carted"
    )
    if carted_product.save
      redirect_to '/carts'
    else
      flash[:warning] = "You must enter a quantity"
      redirect_to "/cars/#{params[:car_id]}"
    end
  end

  def destroy
    carted_product = CartedProduct.find_by(id: params[:id])
    carted_product.status = "removed"
    carted_product.save
    redirect_to '/carts'
  end
end
