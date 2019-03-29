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

ActiveRecord::Schema.define(version: 2019_03_29_205814) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "address_books", force: :cascade do |t|
    t.string "customer_type"
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.string "city"
    t.integer "zip"
    t.string "email"
    t.string "status"
    t.string "category"
    t.date "anniversary"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone"
    t.string "phone2"
    t.string "phone3"
    t.string "phone4"
    t.string "phonetype"
    t.string "phonetype2"
    t.string "phonetype3"
    t.string "phonetype4"
    t.string "fullname"
  end

  create_table "kindcustomers", force: :cascade do |t|
    t.string "kind_customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "reference_name"
    t.string "email_phone"
    t.date "date_reference"
    t.integer "address_book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_book_id"], name: "index_networks_on_address_book_id"
  end

  create_table "promotions", force: :cascade do |t|
    t.string "type_promotion"
    t.integer "cost_promotion"
    t.date "date_promotion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reminders", force: :cascade do |t|
    t.string "close_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "periods_remind"
    t.index ["close_type"], name: "index_reminders_on_close_type", unique: true
  end

  create_table "statuses", force: :cascade do |t|
    t.string "kind_customer"
    t.text "description"
    t.boolean "alarm_calendar"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
