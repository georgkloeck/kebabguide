class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:create]

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(user: current_user)

    binding.pry
    if @review.save
      redirect_to restaurant_review_path(@restaurant, @review)
    else
      render restaurant_path(@restaurant)
    end
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end
end
