class AddDeliveryStatusToAssignments < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :delivery_status, :string
  end
end
