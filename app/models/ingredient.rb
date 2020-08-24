class Ingredient < ApplicationRecord
  has_many :ingredient_reviews
  has_many :reviews, through: :ingredient_reviews
end
