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

ActiveRecord::Schema.define(version: 20170412223656) do

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

  create_table "purchases", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.date     "date"
    t.string   "category"
    t.string   "tipe"
    t.decimal  "amount",      precision: 10
    t.string   "description"
    t.integer  "trip_id"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.index ["trip_id"], name: "index_purchases_on_trip_id", using: :btree
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
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.index ["username"], name: "index_users_on_username", unique: true, using: :btree
  end

  add_foreign_key "employees", "users"
  add_foreign_key "purchases", "trips"
  add_foreign_key "trips", "employees"
end
