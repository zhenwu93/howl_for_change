# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({ first_name: 'Mike', last_name: 'Wu', username: 'user1', email: 'u1@gmail.com', password_digest: '123', phone_number: '123452342'})

Client.create({ company_name: 'Howl', company_website: 'howl.com', username: 'howl1', password_digest: 'howl1',industry: 'non-profit', email: 'howl@gmail.com', phone_number: '9232353255'})

JobListing.create({ client_id: 1, user_id: 1, job_title: 'logo', job_description: 'help create our logo', compensation: '45-50k', countdown: '5:00', category: 'animals', mediatype: 'video', inspiration: 'lion', rules: 'no killing'})

Project.create({ user_id: 1, link: 'howl.com', category: 'animal abuse', affiliation: 'PETA', region: 'USA', tags: 'animals, abuse, stop', title: 'art', description: 'art work'})
# t.integer "user_id"
# t.string "link"
# t.string "category"
# t.string "affiliation"
# t.string "region"
# t.string "tags"

# create_table "clients", force: :cascade do |t|
#   t.string "company_name"
#   t.string "company_website"
#   t.string "username"
#   t.string "password_digest"
#   t.integer "employees"
#   t.string "industry"
#   t.string "email"
#   t.integer "phone_number"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false
# end

# create_table "users", force: :cascade do |t|
#   t.string "first_name"
#   t.string "last_name"
#   t.string "username"
#   t.string "email"
#   t.string "password_digest"
#   t.string "phone_number"
#   t.datetime "created_at", null: false
#   t.datetime "updated_at", null: false

# t.string "company_id"
# t.string "user_id"
# t.string "job_title"
# t.string "job_description"
# t.string "compensation"
# t.string "category"
# t.time "countdown"
# t.string "mediatype"
# t.string "inspiration"
# t.string "rules"
