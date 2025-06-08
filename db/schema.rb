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

ActiveRecord::Schema[7.1].define(version: 2025_06_08_134422) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "educations", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.string "degree"
    t.string "institution"
    t.integer "start_year"
    t.integer "end_year"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_profile_id"], name: "index_educations_on_user_profile_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.string "company"
    t.string "role"
    t.date "start_date"
    t.date "end_date"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_profile_id"], name: "index_experiences_on_user_profile_id"
  end

  create_table "projects", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.string "title"
    t.text "description"
    t.string "tech_stack"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_profile_id"], name: "index_projects_on_user_profile_id"
  end

  create_table "skills", force: :cascade do |t|
    t.bigint "user_profile_id", null: false
    t.string "name"
    t.string "level"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_profile_id"], name: "index_skills_on_user_profile_id"
  end

  create_table "user_profiles", force: :cascade do |t|
    t.string "name"
    t.string "title"
    t.text "about"
    t.string "resume"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "educations", "user_profiles"
  add_foreign_key "experiences", "user_profiles"
  add_foreign_key "projects", "user_profiles"
  add_foreign_key "skills", "user_profiles"
end
