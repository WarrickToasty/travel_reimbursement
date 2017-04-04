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

ActiveRecord::Schema.define(version: 20170404002900) do

  create_table "day_table", primary_key: "d8", id: :date, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "trip_number",     limit: 50
    t.float  "breakfast",       limit: 53
    t.float  "lunch",           limit: 53
    t.float  "dinner",          limit: 53
    t.float  "breakfast_tip",   limit: 53
    t.float  "lunch_tip",       limit: 53
    t.float  "dinner_tip",      limit: 53
    t.float  "lodging",         limit: 53
    t.float  "business_calls",  limit: 53
    t.string "transport_start", limit: 50
    t.string "transport_end",   limit: 50
    t.float  "mileage",         limit: 53
    t.float  "personal_car",    limit: 53
    t.float  "rental_car",      limit: 53
    t.float  "bus_train",       limit: 53
    t.float  "taxi",            limit: 53
    t.float  "airfare",         limit: 53
    t.float  "parking",         limit: 53
    t.float  "gasoline",        limit: 53
    t.index ["trip_number"], name: "trip_number", using: :btree
  end

  create_table "day_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "trip_number"
    t.string   "string"
    t.float    "breakfast",       limit: 24
    t.float    "lunch",           limit: 24
    t.float    "dinner",          limit: 24
    t.float    "breakfast_tip",   limit: 24
    t.float    "lunch_tip",       limit: 24
    t.float    "dinner_tip",      limit: 24
    t.float    "lodging",         limit: 24
    t.float    "business_calls",  limit: 24
    t.string   "transport_start"
    t.string   "transport_end"
    t.float    "mileage",         limit: 24
    t.string   "personal_car"
    t.string   "float"
    t.string   "rental_car"
    t.string   "bus_train"
    t.float    "tax",             limit: 24
    t.float    "airfare",         limit: 24
    t.float    "parking",         limit: 24
    t.float    "gasoline",        limit: 24
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "employee", primary_key: "sap_number", id: :string, limit: 25, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "email",        limit: 50, null: false
    t.string "department",   limit: 50, null: false
    t.string "first_name",   limit: 25, null: false
    t.string "last_name",    limit: 25, null: false
    t.string "phone_number", limit: 20, null: false
    t.string "username",     limit: 20
    t.index ["username"], name: "username", using: :btree
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "email"
    t.string   "department"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "username"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "trip", primary_key: "trip_number", id: :string, limit: 50, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "multi_page",       limit: 1,  null: false
    t.string "sap_number",       limit: 25, null: false
    t.string "contact_person",   limit: 50
    t.string "purpose",          limit: 50, null: false
    t.string "place",            limit: 75, null: false
    t.time   "meeting_time",                null: false
    t.date   "meeting_date",                null: false
    t.time   "begin_time",                  null: false
    t.time   "end_time",                    null: false
    t.date   "begin_date",                  null: false
    t.date   "end_date",                    null: false
    t.string "accompanied_by",   limit: 50
    t.float  "travel_estimate",  limit: 53, null: false
    t.float  "food_estimate",    limit: 53
    t.float  "lodging_estimate", limit: 53
    t.float  "fee_estimate",     limit: 53
    t.float  "conference_fee",   limit: 53
    t.float  "banquet_fee",      limit: 53
    t.float  "dues",             limit: 53
    t.index ["sap_number"], name: "sap_number", using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "multi_page"
    t.string   "sap_number"
    t.string   "contact_person"
    t.string   "purpose"
    t.string   "place"
    t.time     "meeting_time"
    t.date     "meeting_date"
    t.time     "begin_time"
    t.time     "end_time"
    t.date     "begin_date"
    t.date     "end_date"
    t.string   "accompanied_by"
    t.float    "travel_estimate",  limit: 24
    t.float    "food_estimate",    limit: 24
    t.float    "lodging_estimate", limit: 24
    t.float    "fee_estimate",     limit: 24
    t.float    "conference_fee",   limit: 24
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "user", primary_key: "username", id: :string, limit: 20, force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "password", limit: 80, null: false
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "day_table", "trip", column: "trip_number", primary_key: "trip_number", name: "day_table_ibfk_1"
  add_foreign_key "employee", "user", column: "username", primary_key: "username", name: "employee_ibfk_1"
  add_foreign_key "trip", "employee", column: "sap_number", primary_key: "sap_number", name: "trip_ibfk_1"
end
