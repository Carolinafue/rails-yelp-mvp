class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]

  def top
    @restaurants = Restaurant.where(stars: 5)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
  end

  def def new
    @restaurant = Restaurant.new
  end
  
  def create
    @restaurant = Restaurant.new
    if @restaurant.save
      redirect_to @reataurant, notice:
    else
      render :new
    end
  end

  def top
    @restaurants = Restaurant.where(raiting 5)
  end

  def chef
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to @reataurant, notice:
    else
      render :edit
    end
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_url, notice:
  end

  Private

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :rating)
  end
end
