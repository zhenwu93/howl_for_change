class AddMediaTypeToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :mediatype, :string
  end
end
