class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :assignments, :rider_name, :rider_id
  end
end
