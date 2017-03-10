class CarsController < ApplicationController
  def index
    @cars = Car.all
    render 'index.html.erb'
  end

  def show
    input_id = params[:id]
    @car = Car.find_by(id: input_id)
    render 'show.html.erb'
  end
end
