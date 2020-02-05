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

ActiveRecord::Schema.define(version: 2020_02_05_100313) do

  create_table "contractors", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.integer "phoneNum"
    t.string "email"
    t.string "companyName"
    t.string "city"
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "contracts", force: :cascade do |t|
    t.string "projectName"
    t.string "projectStreet"
    t.string "projectCity"
    t.string "projectCountry"
    t.string "projectBudget"
    t.datetime "projectBegginDate"
    t.datetime "projectEndDate"
    t.string "projectType"
    t.string "projectInformation"
    t.integer "projectStaff"
    t.boolean "projectCompleted"
    t.integer "monthsEstimated"
    t.integer "monthsCurrent"
    t.integer "monthsOverDue"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "supervisors", force: :cascade do |t|
    t.string "firstName"
    t.string "lastName"
    t.integer "phoneNum"
    t.string "email"
    t.string "city"
    t.string "country"
    t.integer "contractor_id", null: false
    t.integer "contract_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["contract_id"], name: "index_supervisors_on_contract_id"
    t.index ["contractor_id"], name: "index_supervisors_on_contractor_id"
  end

  add_foreign_key "supervisors", "contractors"
  add_foreign_key "supervisors", "contracts"
end
