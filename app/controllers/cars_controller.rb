class CarsController < ApplicationController
  before_action :authenticate_admin!, except: [:index, :show]
  def index
    @categories = Category.all
    
    if params[:sort] && params[:order]
      @cars = Car.order(params[:sort] => params[:order])
    elsif params[:discount] 
      @cars = Car.where("price <= ?", 20000)
    elsif params[:search]
      @cars = Car.where("lower(model) LIKE ?", "%#{params[:search]}%")
    elsif params[:category]
      @cars = Category.find_by(id: params[:category]).cars
    else
      @cars = Car.all
    end
    render 'index.html.erb'
  end

  def new 
    @suppliers = Supplier.all
    @car = Car.new
  end

  def create
    @car = Car.new(
      make: params['form_make'],
      model: params['form_model'],
      year: params['form_year'],
      price: params['form_price'],
      description: params['form_description'],
      supplier_id: params['supplier']
    )
    if @car.save
      flash[:success] = "you have submitted"
      redirect_to "/cars/#{@car.id}"
    else
      @suppliers = Supplier.all
      render 'new.html.erb'
    end
  end

  def show
    input_id = params[:id]
    @car = Car.find(input_id)
  end

  def edit
    @car = Car.find(params[:id])
    @suppliers = Supplier.all
  end

  def update
    @car = Car.find(params[:id])
    @car.update(
      make: params['form_make'],
      model: params['form_model'],
      year: params['form_year'],
      price: params['form_price'],
      description: params['form_description'],
      supplier_id: params['supplier']
    )
    if @car.save
      flash[:info] = "nice update!"
      redirect_to "/cars/#{@car.id}"
    else
      @suppliers = Supplier.all
      render 'edit.html.erb'
    end
  end

  def destroy
    @car = Car.find(params[:id])
    @id = @car.id
    @car.destroy
    flash[:danger] = "yoishhh... it's deleted"
    redirect_to '/cars'
  end
end


