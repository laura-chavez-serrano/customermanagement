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

ActiveRecord::Schema.define(version: 2019_03_25_232852) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_books", force: :cascade do |t|
    t.string "Customer_Type"
    t.string "First_Name"
    t.string "Last_Name"
    t.string "Address"
    t.string "City"
    t.integer "ZIP"
    t.string "email"
    t.string "Status"
    t.string "Category_Buyers"
    t.date "Anniversary"
    t.text "Comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.integer "phone_number_type"
    t.integer "address_book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_book_id"], name: "index_phones_on_address_book_id"
  end

end
