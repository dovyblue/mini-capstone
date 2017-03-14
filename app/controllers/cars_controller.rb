class CarsController < ApplicationController
  
  def index
    @cars = Car.all
    render 'index.html.erb'
  end

  def new 
    render 'new.html.erb'
  end

  def create
    @car = Car.new(
      make: params['form_make'],
      model: params['form_model'],
      year: params['form_year'],
      price: params['form_price'],
      image: params['form_image'],
      description: params['form_description']
    )
    @car.save
    flash[:success] = "you have submitted"
    redirect_to "/cars/#{@car.id}"
  end

  def show
    input_id = params[:id]
    @car = Car.find(input_id)
    render 'show.html.erb'
  end

  def edit
    @car = Car.find(params[:id])
    render 'edit.html.erb'
  end

  def update
    @car = Car.find(params[:id])
    @car.update(
      make: params['form_make'],
      model: params['form_model'],
      year: params['form_year'],
      price: params['form_price'],
      image: params['form_image'],
      description: params['form_description']
    )
    flash[:info] = "nice update!"
    redirect_to "/cars/#{@car.id}"
  end

  def destroy
    @car = Car.find(params[:id])
    @id = @car.id
    @car.destroy
    flash[:danger] = "yoishhh... it's deleted"
    redirect_to '/cars'
  end
end
