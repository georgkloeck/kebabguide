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
    score_sum = 0
    subreview_count = 0
    @restaurant = Restaurant.find(params[:id])
    @query = params[:query] unless params[:query].nil?
      @restaurant.ingredient_reviews.each do |ing_review|
        score_sum += ing_review.score
      end
    subreview_count = @restaurant.ingredient_reviews.count
    @average_rating = score_sum.to_f / subreview_count

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
