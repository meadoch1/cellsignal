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

ActiveRecord::Schema.define(version: 2019_09_17_235331) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "carriers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "location_reports", force: :cascade do |t|
    t.bigint "speed_report_id", null: false
    t.string "hookups"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["speed_report_id"], name: "index_location_reports_on_speed_report_id"
  end

  create_table "location_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string "name"
    t.bigint "location_type_id", null: false
    t.bigint "organization_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["location_type_id"], name: "index_locations_on_location_type_id"
    t.index ["organization_id"], name: "index_locations_on_organization_id"
  end

  create_table "organizations", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "speed_reports", force: :cascade do |t|
    t.datetime "test_dt"
    t.bigint "location_id", null: false
    t.string "site_name"
    t.bigint "carrier_id", null: false
    t.string "device_name"
    t.integer "ping_ms"
    t.decimal "download_mb"
    t.decimal "upload_mb"
    t.string "booster"
    t.string "external_antenna"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["carrier_id"], name: "index_speed_reports_on_carrier_id"
    t.index ["location_id"], name: "index_speed_reports_on_location_id"
  end

  add_foreign_key "location_reports", "speed_reports"
  add_foreign_key "locations", "location_types"
  add_foreign_key "locations", "organizations"
  add_foreign_key "speed_reports", "carriers"
  add_foreign_key "speed_reports", "locations"
end
