class AddImageToRiders < ActiveRecord::Migration[6.0]
  def change
    add_column :riders, :image, :string
  end
end
