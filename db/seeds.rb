# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name: "Alex Laskin", email: "alex_l13@abv.bg", password: "efu311",
   password_confirmation: "efu311", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png",
   permissions: 3, activated: true, activated_at: Time.zone.now)
User.create!(name: "ImTheWizzy", email: "Martin_todo9@abv.bg", password: "123",
      password_confirmation: "123", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png",
      permissions: 3, activated: true, activated_at: Time.zone.now)
99.times do |n|
  name = Faker::Name.name
  email = "example-#{n+n+1}@railstutorial.org"
  password = "password"
  image_url = "https://www.mobafire.com/images/champion/square/master-yi.png"
  User.create!(name:name, email:email, password: password, password_confirmation: password, image_url: image_url,activated: true, activated_at: Time.zone.now)
end

Warframe.create!(name: "Ash",whereToGet: "Everywhere", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png")
20.times do |n|
  name = Faker::Name.name
  whereToGet = "Everywhere"
  image_url = "https://www.mobafire.com/images/champion/square/master-yi.png"
  Warframe.create!(name:name, whereToGet:whereToGet, image_url: image_url)
end
