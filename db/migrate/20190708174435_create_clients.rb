class CreateClients < ActiveRecord::Migration[5.2]
  def change
    create_table :clients do |t|
      t.string "company_name"
      t.string "company_website"
      t.string "username"
      t.string "password_digest"
      t.integer "employees"
      t.string "industry"
      t.string "email"
      t.integer "phone_number"  
      t.timestamps
    end
  end
end
