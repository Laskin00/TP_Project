# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180508071705) do

  create_table "mods", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "whereToGet"
    t.string "dropChance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "mod_type"
    t.index ["name"], name: "index_mods_on_name", unique: true
  end

  create_table "primeparts", force: :cascade do |t|
    t.string "name"
    t.integer "rarity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_primeparts_on_name", unique: true
  end

  create_table "relic_primepart_connections", force: :cascade do |t|
    t.integer "relic_id"
    t.integer "primepart_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relics", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "whereToGet"
    t.string "dropChance"
    t.string "relic_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_relics_on_name", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "image_url", default: "https://img-fanburst.freetls.fastly.net/pjbL8r-DgAVxsfgA0ijKasVEae8=/400x400/cx2.fanburst.com/artwork/560cebff-1cf1-4bf0-9ab7-15623ffba8da.png"
    t.string "remember_digest"
    t.integer "permissions", default: 0
    t.string "activation_digest"
    t.boolean "activated", default: false
    t.datetime "activated_at"
    t.string "reset_digest"
    t.datetime "reset_sent_at"
    t.index ["email"], name: "index_users_on_email", unique: true
  end

  create_table "warframes", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "whereToGet"
    t.string "neuropticsDropChance"
    t.string "chassisDropChance"
    t.string "systemsDropChance"
    t.string "blueprintDropChance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "armor"
    t.string "shield"
    t.string "mastery_rank"
    t.string "health"
    t.string "energy"
    t.string "description"
    t.index ["name"], name: "index_warframes_on_name", unique: true
  end

  create_table "weapons", force: :cascade do |t|
    t.string "name"
    t.string "image_url"
    t.string "whereToGet"
    t.string "dropChance"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "weapon_type"
    t.string "mastery_rank"
    t.string "attack_type"
    t.string "impact"
    t.string "puncture"
    t.string "slash"
    t.string "elecricity"
    t.string "fire"
    t.string "toxin"
    t.string "cold"
    t.string "blast"
    t.string "corrosive"
    t.string "gas"
    t.string "magnetic"
    t.string "radiation"
    t.string "viral"
    t.index ["name"], name: "index_weapons_on_name", unique: true
  end

end
