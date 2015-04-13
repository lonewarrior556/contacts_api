# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(username: "lonewarrior1")
User.create!(username: "lonewarrior2")
User.create!(username: "lonewarrior3")
User.create!(username: "lonewarrior4")
User.create!(username: "lonewarrior5")


Contact.create!(email: "example1@example.com", name: "bobby", user_id: 1)
Contact.create!(email: "example2@example.com", name: "bobby", user_id: 2)
Contact.create!(email: "example3@example.com", name: "bobby", user_id: 3)
Contact.create!(email: "example4@example.com", name: "bobby", user_id: 4)
Contact.create!(email: "example5@example.com", name: "bobby", user_id: 5)

ContactShare.create!(user_id: 1 , contact_id:2)
ContactShare.create!(user_id: 1 , contact_id:3)
ContactShare.create!(user_id: 1 , contact_id:4)
ContactShare.create!(user_id: 1 , contact_id:5)
ContactShare.create!(user_id: 2 , contact_id:3)
ContactShare.create!(user_id: 2 , contact_id:4)
ContactShare.create!(user_id: 2 , contact_id:5)
ContactShare.create!(user_id: 3 , contact_id:4)
ContactShare.create!(user_id: 4 , contact_id:3)
ContactShare.create!(user_id: 5 , contact_id:1)
ContactShare.create!(user_id: 5 , contact_id:2)
