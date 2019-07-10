class CreateJobListings < ActiveRecord::Migration[5.2]
  def change
    create_table :job_listings do |t|
      t.integer "company_id"
      t.integer "user_id"
      t.string "job_title"
      t.string "job_description"
      t.string "compensation"
      t.timestamps
    end
  end
end
