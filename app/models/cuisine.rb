class Cuisine < ApplicationRecord
  has_one_attached :image
  has_many :restaurants
end
