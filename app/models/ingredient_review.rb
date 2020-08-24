class IngredientReview < ApplicationRecord
  belongs_to :review
  belongs_to :ingredient
end
