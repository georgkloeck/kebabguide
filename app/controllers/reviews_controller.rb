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
    @ingredient = IngredientReview.new
    @ingredients = Ingredient.all
    @fillings = @ingredients.select { |ing| ing.kind == "filling" }
  end

  def create
    # @review = @restaurant.reviews.new(user: current_user)
    @user = current_user
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new(user_id: @user.id, restaurant_id: @restaurant.id) # need a user and rest ids
    if @review.save
      redirect_to restaurant_review_path(@restaurant, @review)
    else
      render restaurant_path(@restaurant)
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
end
