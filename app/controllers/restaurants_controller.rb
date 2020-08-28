class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @restaurants_mapped = Restaurant.geocoded # returns only gecoded restaurants
    # creating markers
    @markers = @restaurants_mapped.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to @restaurant
    else
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :description, :cuisine_id, :image, :image_cache)
  end
end
