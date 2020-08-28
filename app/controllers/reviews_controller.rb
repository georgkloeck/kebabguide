class ReviewsController < ApplicationController
  before_action :find_restaurant, only: [:create, :show]

  def show
    @review = Review.find(params[:id])
  end

  def new
    # test variables
    @ingredient_review_fillings = IngredientReview.new
    @ingredient_review = IngredientReview.new
    @user = current_user
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @ingredients = Ingredient.all
    @fillings = @ingredients.select { |ing| ing.kind == "filling" }
  end

  def create
    # for test
    if !@review.save
    puts "error invoked"
    # redirect_to later
    end
  end

  def destroy

  end

  private

  def find_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.permit!
  end
end

