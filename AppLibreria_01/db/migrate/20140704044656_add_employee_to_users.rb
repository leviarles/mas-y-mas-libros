class AddEmployeeToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :employee, index: true
  end
end
