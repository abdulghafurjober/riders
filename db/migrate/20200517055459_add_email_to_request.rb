class AddEmailToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :customer_email, :text
  end
end
