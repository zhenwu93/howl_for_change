class RemovePhoneNumberFromClient < ActiveRecord::Migration[5.2]
  def change
    remove_column :clients, :phone_number, :integer
  end
end
