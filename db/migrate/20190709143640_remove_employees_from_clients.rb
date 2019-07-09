class RemoveEmployeesFromClients < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :employees, :integer
  end
end
