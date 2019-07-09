class AddClientIdToJobListing < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :client_id, :integer
  end
end
