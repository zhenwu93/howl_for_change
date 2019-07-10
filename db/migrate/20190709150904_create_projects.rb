class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.integer "user_id"
      t.string "link"
      t.string "category"
      t.string "affiliation"
      t.string "region"
      t.string "tags"
      t.timestamps
    end
  end
end
