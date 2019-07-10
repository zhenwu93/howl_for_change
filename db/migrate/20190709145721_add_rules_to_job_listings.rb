class AddRulesToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :rules, :string
  end
end
