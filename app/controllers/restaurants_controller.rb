class RestaurantsController < ApplicationController

def index
  @restaurants = Restaurant.all
  @restuarants_mapped = Restaurant.geocoded # returns only gecoded restuarants
  # creating markers
    @markers = @restuarants_mapped.map do |restaurant|
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

end
