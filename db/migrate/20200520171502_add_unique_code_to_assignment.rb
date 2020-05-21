class AddUniqueCodeToAssignment < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :unique_code, :text
  end
end
