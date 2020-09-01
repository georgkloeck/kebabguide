class Restaurant < ApplicationRecord
  # mount_uploader :image, ImageUploader

  belongs_to :cuisine
  has_many :reviews
  has_many :ingredient_reviews, through: :reviews
  has_many :ingredients, through: :ingredient_reviews
  geocoded_by :address
  has_one_attached :image

  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  after_validation :geocode, if: :will_save_change_to_address?
end
