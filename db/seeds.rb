require 'faker'
require "open-uri"


puts "> Clearing Database..."
Account.destroy_all

puts "> Creating users..."

# FILE = File.open('app/assets/images/portrait.jpg')

# url = Faker::Avatar.image(slug: 'my-own-slug', size: '250x250')
# filename = File.basename(URI.parse(url).path)
# file = URI.open(url)

15.times do 
  Account.create(
    first_name: Faker::Name.first_name,
    last_name: Faker::Name.last_name,
    username: Faker::Games::Witcher.monster,
    email: Faker::Internet.email,
    password: "123456",
  )
  # account.images.attach(io: FILE, filename: 'person.jpg', content_type: 'image/jpg')
  # account.images.attach(io: file, filename: filename)
end

puts "> Done!"