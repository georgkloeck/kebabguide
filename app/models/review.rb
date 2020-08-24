class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :ingredient_reviews
  has_many :ingredients, through: :ingredient_reviews
end
