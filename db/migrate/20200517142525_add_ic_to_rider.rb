class AddIcToRider < ActiveRecord::Migration[6.0]
  def change
    add_column :riders, :ic, :text
  end
end
