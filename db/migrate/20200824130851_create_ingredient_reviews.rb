class CreateIngredientReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :ingredient_reviews do |t|
      t.references :review, null: false, foreign_key: true
      t.references :ingredient, null: false, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end
