class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy, :chef]
  def top
    @restaurants = Restaurant.where(stars: 5)
  end

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
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

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

end
