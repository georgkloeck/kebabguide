class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:create, :show]

  def show
    @review = Review.find(params[:id])
  end

  def new
    # all variables needed.
    @user = current_user
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    raise
    if @review = Review.create(restaurant_id: @restaurant.id, user_id: current_user.id)
      params[:ingredients].each do |ingredient|
        ingredient_id = ingredient[:id]
        ingredient_score = ingredient[:score]
        IngredientReview.create(ingredient_id: ingredient_id, score: ingredient_score,  review_id: @review.id)
      end
      redirect_to restaurant_review_path(@restaurant, @review)
      # if @review.save
    end
  end

  def destroy
    @user = current_user
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to restaurants_path
  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    # params.require(:review).permit(:restaurant_id, :user_id, :photos)
    params.permit!
  end
end
