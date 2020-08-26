class Cuisine < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :restaurants
end
