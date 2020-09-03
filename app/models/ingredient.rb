class Ingredient < ApplicationRecord
  has_one_attached :image
  has_many :ingredient_reviews
  has_many :reviews, through: :ingredient_reviews
  KINDS = %w(bread filling salad sauce extra )
end
