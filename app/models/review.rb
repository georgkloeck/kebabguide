class Review < ApplicationRecord
  belongs_to :restaurant
  belongs_to :user
  has_many :ingredient_reviews
  has_many :ingredients, through: :ingredient_reviews
  has_many_attached :photos
  # in docs: add method for review (addresses_attributes=)
  accepts_nested_attributes_for :ingredient_reviews
end
