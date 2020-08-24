class CreateCuisines < ActiveRecord::Migration[6.0]
  def change
    create_table :cuisines do |t|
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
