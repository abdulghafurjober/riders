class CreateRiders < ActiveRecord::Migration[6.0]
  def change
    create_table :riders do |t|
      t.string :name
      t.string :IC
      t.string :phone
      t.string :location
      t.string :status
      t.string :bankacc
      t.string :bankname

      t.timestamps
    end
  end
end
