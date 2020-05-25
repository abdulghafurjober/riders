class AddRequestToAssignment < ActiveRecord::Migration[6.0]
  def change
    add_reference :assignments, :request, index: true
  end
end
