class AddBillcodeToRequest < ActiveRecord::Migration[6.0]
  def change
    add_column :requests, :billcode, :text
  end
end
