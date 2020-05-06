class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :IC
      t.string :Name
      t.string :Phone
      t.string :Location

      t.timestamps
    end
  end
end
