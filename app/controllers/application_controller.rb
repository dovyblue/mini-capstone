class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def authenticate_user!
    redirect_to '/login' unless current_user
  end

  def authenticate_admin!
    redirect_to '/cars' unless current_user && current_user.admin
  end

  def cart_count
    current_user.carted_products.where(status: "carted").length
  end
  helper_method :cart_count

  def random
    Car.order("RANDOM()").first.id
  end
  helper_method :random
end


  

