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

ActiveRecord::Schema.define(version: 2022_03_23_121334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "doctors", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "gender"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "medicines", force: :cascade do |t|
    t.string "name"
    t.float "price"
    t.string "type_of"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "prescription_medicines", force: :cascade do |t|
    t.bigint "prescription_id"
    t.bigint "medicine_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "note"
    t.integer "qty"
    t.string "unit"
    t.date "start_date"
    t.date "end_date"
    t.float "price"
    t.index ["medicine_id"], name: "index_prescription_medicines_on_medicine_id"
    t.index ["prescription_id"], name: "index_prescription_medicines_on_prescription_id"
  end

  create_table "prescriptions", force: :cascade do |t|
    t.integer "doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.text "title"
    t.index ["doctor_id"], name: "index_prescriptions_on_doctor_id"
  end

  add_foreign_key "prescription_medicines", "medicines"
  add_foreign_key "prescription_medicines", "prescriptions"
end
