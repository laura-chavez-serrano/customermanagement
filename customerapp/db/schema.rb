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

ActiveRecord::Schema.define(version: 2019_04_09_015008) do

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
    t.date "date_anniversary"
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
    t.string "type_property"
  end

  create_table "addresslogs", force: :cascade do |t|
    t.integer "address_book_id"
    t.string "address"
    t.string "city"
    t.date "anniversary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "type_property"
    t.index ["address_book_id"], name: "index_addresslogs_on_address_book_id"
  end

  create_table "apromotions", force: :cascade do |t|
    t.string "type_promotion"
    t.integer "promotion_id"
    t.integer "address_book_id"
    t.date "assigned_date"
    t.integer "unit_cost"
    t.boolean "active"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["address_book_id"], name: "index_apromotions_on_address_book_id"
    t.index ["type_promotion"], name: "index_apromotions_on_type_promotion"
  end

  create_table "kindcustomers", force: :cascade do |t|
    t.string "kind_customer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "networks", force: :cascade do |t|
    t.string "reference_name"
    t.string "email_phone"
    t.date "anniversary"
    t.integer "address_book_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "kind_relationship"
    t.index ["address_book_id"], name: "index_networks_on_address_book_id"
  end

  create_table "pg_search_documents", force: :cascade do |t|
    t.text "content"
    t.string "searchable_type"
    t.bigint "searchable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["searchable_type", "searchable_id"], name: "index_pg_search_documents_on_searchable_type_and_searchable_id"
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
