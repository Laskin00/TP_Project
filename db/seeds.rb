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
User.create!(name: "ImTheWizzy", email: "Martin_todo9@abv.bg", password: "123123",
      password_confirmation: "123123", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png",
      permissions: 3, activated: true, activated_at: Time.zone.now)
# 99.times do |n|
#   name = Faker::Name.name
#   email = "example-#{n+n+1}@railstutorial.org"
#   password = "password"
#   image_url = "https://www.mobafire.com/images/champion/square/master-yi.png"
#   User.create!(name:name, email:email, password: password, password_confirmation: password, image_url: image_url,activated: true, activated_at: Time.zone.now)
# end

# Warframe.create!(name: "Ash",whereToGet: "Everywhere", image_url: "https://www.mobafire.com/images/champion/square/master-yi.png")
# 20.times do |n|
#   name = Faker::Name.name
#   whereToGet = "Everywhere"
#   image_url = "https://www.mobafire.com/images/champion/square/master-yi.png"
#   Warframe.create!(name:name, whereToGet:whereToGet, image_url: image_url)
# end

Warframe.create!(name: "Ash",
   image_url: "https://vignette.wikia.nocookie.net/warframe/images/1/17/AshNewLook.png/revision/latest/scale-to-width-down/291?cb=20141124022921",
     whereToGet: "Dropped from Manics")

Relic.create!(name: "Axi A3", image_url: "https://image.ibb.co/gb4b5H/axi_wf_wiki.png",
  whereToGet: "Sedna Hydron", relic_type: "axi")

Mod.create!(name: "Maiming Strike", whereToGet: "Once a year event", image_url: "https://vignette.wikia.nocookie.net/warframe/images/d/d6/MaimingStrikeMod.png/revision/latest?cb=20171007152935", mod_type: "weapon")
Weapon.create!(name: "Atterax", whereToGet: "Market", weapon_type: "melee", image_url: "https://vignette.wikia.nocookie.net/warframe/images/4/4e/GrineerWhip.png/revision/latest/scale-to-width-down/220?cb=20140918035809",
   attack_type: "Whip", mastery_rank: 2, impact: 2 , puncture: 2, viral: 2, toxin: 3)
