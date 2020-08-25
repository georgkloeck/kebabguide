class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.string :address
      t.text :description
      t.references :cuisine, null: false, foreign_key: true

      t.timestamps
    end
  end
end