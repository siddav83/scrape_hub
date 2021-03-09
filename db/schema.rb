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

ActiveRecord::Schema.define(version: 2021_03_09_103129) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boroughs", force: :cascade do |t|
    t.string "name"
    t.integer "population"
    t.integer "area"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.float "employment_rate"
    t.integer "gross_income"
    t.integer "average_age"
    t.integer "two_year_business_survival_rates"
    t.integer "happiness_score_out_of_10"
    t.text "description"
    t.float "latitude"
    t.float "longitude"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.bigint "borough_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "turnover"
    t.string "category"
    t.integer "date_of_incoporation"
    t.string "ceo"
    t.float "number_of_employees"
    t.float "profit"
    t.float "members"
    t.index ["borough_id"], name: "index_companies_on_borough_id"
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

  add_foreign_key "companies", "boroughs"
end
