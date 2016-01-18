class RestaurantsController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])
    @reviews = @restaurant.reviews
  end

  def new
    @restaurant = Restaurant.new
  end

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_parmas)

    if @restaurant.save
      flash[:notice] = "Restaurant added successfully"
      redirect_to restaurant_path(@restaurant)
    else
      flash[:errors] = @restaurant.errors.full_messages.join(". ")
      render :new
    end
  end

  private
  def restaurant_parmas
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip, :description)
  end
end
