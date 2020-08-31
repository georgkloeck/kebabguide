class RestaurantsController < ApplicationController

  def index
    # Sow we can display teh search term
    @query = params[:query] unless params[:query].nil?

    # shows only near Restaurants
    if params[:query].present?
      @restaurants = Restaurant.near(params[:query], 3)
      #                                               ^Kilometers
    else
      @restaurants = Restaurant.all
    end

    @restaurants_mapped = @restaurants.geocoded # returns only gecoded restaurants
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
    params.require(:restaurant).permit(:name, :address, :description, :cuisine_id, :image, :image_cache, :query)
  end
end
