require 'faker'
require "open-uri"


puts "> Clearing Database..."
Account.destroy_all

puts "> Creating users..."

# FILE = File.open('app/assets/images/portrait.jpg')

15.times do 
  Account.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Games::Witcher.monster,
    email: Faker::Internet.email,
    password: "123456",
  )
  # account.images.attach(io: FILE, filename: 'person.jpg', content_type: 'image/jpg')
end

puts "> Done!"