class AddCountdownToJobListings < ActiveRecord::Migration[5.2]
  def change
    add_column :job_listings, :countdown, :time
  end
end
