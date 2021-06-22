class AddDepartmentAndPositionToUser < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :department
    add_reference :users, :position
  end
end
