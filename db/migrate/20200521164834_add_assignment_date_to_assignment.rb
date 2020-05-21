class AddAssignmentDateToAssignment < ActiveRecord::Migration[6.0]
  def change
    add_column :assignments, :assignment_date, :text
  end
end
