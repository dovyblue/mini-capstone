class CarsController < ApplicationController
  def dcars
    @cars = Car.all
    render 'dovycars.html.erb'
  end
end
