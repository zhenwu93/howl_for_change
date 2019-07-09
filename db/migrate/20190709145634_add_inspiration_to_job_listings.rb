class AddInspirationToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :inspiration, :string
  end
end
