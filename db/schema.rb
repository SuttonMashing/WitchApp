# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_05_13_101708) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "downfall_citizens", force: :cascade do |t|
    t.string "name"
    t.string "honourific"
    t.integer "roll"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hither_encounters", force: :cascade do |t|
    t.integer "roll"
    t.string "encounter"
    t.string "Sub-Table"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
