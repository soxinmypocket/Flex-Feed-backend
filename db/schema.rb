# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_08_15_210249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "add_picture_to_boards", force: :cascade do |t|
    t.bigint "visionboards_id", null: false
    t.bigint "pictures_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["pictures_id"], name: "index_add_picture_to_boards_on_pictures_id"
    t.index ["visionboards_id"], name: "index_add_picture_to_boards_on_visionboards_id"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "category"
    t.string "image"
    t.string "title"
    t.string "description"
    t.integer "likes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "visionboards", force: :cascade do |t|
    t.string "title"
    t.string "photo"
    t.string "description"
    t.string "author"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "add_picture_to_boards", "pictures", column: "pictures_id"
  add_foreign_key "add_picture_to_boards", "visionboards", column: "visionboards_id"
end
