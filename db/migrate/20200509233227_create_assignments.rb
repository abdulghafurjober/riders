class CreateAssignments < ActiveRecord::Migration[6.0]
  def change
    create_table :assignments do |t|
      t.string :vendor_name
      t.string :vendor_phone
      t.string :vendor_email
      t.string :customer_name
      t.string :customer_phone
      t.string :pickup_address
      t.string :dropoff_address
      t.string :assignment_type
      t.string :task
      t.string :rider_name
      t.string :extra_notes

      t.timestamps
    end
  end
end
