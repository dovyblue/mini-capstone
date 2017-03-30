class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    carted_products = CartedProduct.where(status: "carted").where(user_id: current_user.id)
    total = 0
    carted_products.each do |product|
      total += product.quantity * product.car.price
    end
    tax = total * 0.08
    order = Order.new(
      user_id: current_user.id,
      subtotal: total,
      tax: tax,
      total: total + tax
    )
    order.save
    carted_products.each do |product|
      product.status = "purchased"
      product.order_id = order.id
      product.save
    end
    redirect_to "/orders/#{order[:id]}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
