class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:create, :show]

  def show
    @review = Review.find(params[:id])
  end

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.new(user: current_user)

    if @review.save
      redirect_to restaurant_review_path(@restaurant, @review)
    else
      render restaurant_path(@restaurant)
    end
  end

  private

  def review_params
    params.require(:review).permit(:restaurant_id, :user_id, :photos)
  end
end
