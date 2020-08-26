class AddImageToCuisines < ActiveRecord::Migration[6.0]
  def change
    add_column :cuisines, :image, :string
  end
end
