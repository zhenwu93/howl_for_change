class RemoveCompanyIdFromJobListing < ActiveRecord::Migration[5.2]
  def change
    remove_column :job_listings, :company_id, :integer
  end
end
