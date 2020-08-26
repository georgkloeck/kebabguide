class Restaurant < ApplicationRecord
  belongs_to :cuisine
  has_many :reviews
  has_many :ingredient_reviews, through: :reviews
  has_many :ingredients, through: :ingredient_reviews
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  has_one_attached :photo
end
