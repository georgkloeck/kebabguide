class Restaurant < ApplicationRecord
  mount_uploader :image, ImageUploader

  belongs_to :cuisine
  has_one_attached :photo
  has_many :reviews
  has_many :ingredient_reviews, through: :reviews
  has_many :ingredients, through: :ingredient_reviews
  geocoded_by :address
  validates :name, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
