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

ActiveRecord::Schema.define(version: 2020_05_22_144319) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "assignments", force: :cascade do |t|
    t.string "vendor_name"
    t.string "vendor_phone"
    t.string "vendor_email"
    t.string "customer_name"
    t.string "customer_phone"
    t.string "pickup_address"
    t.string "dropoff_address"
    t.string "assignment_type"
    t.string "task"
    t.string "rider_id"
    t.string "extra_notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "delivery_status"
    t.text "unique_code"
    t.text "assignment_date"
    t.bigint "request_id"
    t.index ["request_id"], name: "index_assignments_on_request_id"
  end

  create_table "requests", force: :cascade do |t|
    t.datetime "date"
    t.boolean "insurance", default: false
    t.text "delivery_type"
    t.text "customer_name"
    t.text "customer_phone"
    t.text "customer_address"
    t.text "pickup_name"
    t.text "pickup_phone"
    t.text "pickup_address"
    t.text "notes"
    t.text "additional_notes"
    t.text "area"
    t.text "total_price", default: "0"
    t.text "distance"
    t.text "duration"
    t.text "status", default: "pending"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "customer_email"
    t.text "billcode"
    t.text "p_lat"
    t.text "p_lng"
    t.text "d_lat"
    t.text "d_lng"
  end

  create_table "riders", force: :cascade do |t|
    t.string "name"
    t.string "IC"
    t.string "phone"
    t.string "location"
    t.string "status"
    t.string "bankacc"
    t.string "bankname"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "image"
    t.string "coverage_location"
    t.text "ic"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
