class CreateRequests < ActiveRecord::Migration[6.0]
  def change
    create_table :requests do |t|
      t.datetime :date
      t.boolean :insurance, default: false
      t.text :delivery_type
      t.text :customer_name
      t.text :customer_phone
      t.text :customer_address
      t.text :pickup_name
      t.text :pickup_phone
      t.text :pickup_address
      t.text :notes
      t.text :additional_notes
      t.text :area
      t.text :total_price, default: 0
      t.text :distance
      t.text :duration
      t.text :status, default: 'pending'

      t.timestamps
    end
  end
end
