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

ActiveRecord::Schema.define(version: 20170405200413) do

  create_table "day_tables", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "d8"
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
    t.integer  "trip_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["trip_id"], name: "index_day_tables_on_trip_id", using: :btree
  end

  create_table "employees", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "sap_number"
    t.string   "email"
    t.string   "department"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "phone_number"
    t.string   "username"
    t.integer  "user_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["user_id"], name: "index_employees_on_user_id", using: :btree
  end

  create_table "trips", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "trip_number"
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
    t.float    "banquet_fee",      limit: 24
    t.float    "dues",             limit: 24
    t.integer  "employee_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.index ["employee_id"], name: "index_trips_on_employee_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "day_tables", "trips"
  add_foreign_key "employees", "users"
  add_foreign_key "trips", "employees"
end
