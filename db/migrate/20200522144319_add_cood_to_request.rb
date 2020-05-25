class AddCoodToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :p_lat, :text
    add_column :requests, :p_lng, :text
    add_column :requests, :d_lat, :text
    add_column :requests, :d_lng, :text
  end
end
