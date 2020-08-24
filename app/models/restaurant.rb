class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :reviews
  has_many :ingredient_reviews, through: :reviews
  has_many :ingredients, through: :ingredient_reviews
end
