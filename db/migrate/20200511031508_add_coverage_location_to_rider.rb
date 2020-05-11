class AddCoverageLocationToRider < ActiveRecord::Migration[6.0]
  def change
    add_column :riders, :coverage_location, :string
  end
end
