class OrdersController < ApplicationController
  before_action :authenticate_user!
  def create
    carted_products = current_user.carted_products.where(status: "carted")
    order = Order.new(
      user_id: current_user.id
    )
    order.save
    carted_products.each do |product|
      product.update(status: "purchased", order_id: order.id)
    end
    order.calculate_totals
    redirect_to "/orders/#{order[:id]}"
  end

  def show
    @order = Order.find_by(id: params[:id])
    render 'show.html.erb'
  end
end
