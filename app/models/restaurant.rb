class Restaurant < ApplicationRecord
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

  def subratings
    hash ={}
    ingredient_reviews.each do |ingredient_review|
      if hash[ingredient_review.ingredient_id]
        hash[ingredient_review.ingredient_id] << ingredient_review.score
      else
        hash[ingredient_review.ingredient_id] = [ingredient_review.score]
      end
    end
    hash.each do |k,v|
      hash[k] = (v.sum / v.length.to_f).round(0)
    end
    # raise
  end
end
