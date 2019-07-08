# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({ first_name: 'Mike', last_name: 'Wu', username: 'user1', email: 'u1@gmail.com', password_digest: '123', phone_number: '123452342'})
Client.create({ company_name: 'Howl', company_website:'howl.com', username: 'howl1', password_digest: 'howl1', employees: 1000, industry: 'non-profit', email: 'howl@gmail.com', phone_number: '9232353255'})

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
