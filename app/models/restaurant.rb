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
  end

  def avg_rating
    score_sum = 0
    subreview_count = 0
      ingredient_reviews.each do |ing_review|
        score_sum += ing_review.score
      end
    subreview_count = ingredient_reviews.count
    @average_rating = (score_sum.to_f / subreview_count).round(1)
    # raise
  end
end
