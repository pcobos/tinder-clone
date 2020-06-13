# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "> Clearing Database..."
Account.destroy_all

puts "> Creating users..."

Account.create([
  {first_name: "Pedro", last_name: "Cobos", username: "pcobos", email: "peter@cobos.com", password: "123456"},
  {first_name: "Sarah", last_name: "Smith", username: "ssmith", email: "sarah@user.com", password: "123456"},
  {first_name: "Andy", last_name: "Jones", username: "ajones", email: "andy@user.com", password: "123456"},
  {first_name: "Alex", last_name: "Baby", username: "ssmith", email: "alex@user.com", password: "123456"},
])

puts "> Done!"