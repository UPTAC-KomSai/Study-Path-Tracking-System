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

ActiveRecord::Schema.define(version: 20180517133811) do

  create_table "degrees", force: :cascade do |t|
    t.integer "division_id"
    t.string "code"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_id"], name: "index_degrees_on_division_id"
  end

  create_table "divisions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "study_paths", force: :cascade do |t|
    t.integer "degree_id"
    t.integer "subject_id"
    t.boolean "isMajor"
    t.boolean "isGE"
    t.boolean "isRequired"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["degree_id"], name: "index_study_paths_on_degree_id"
    t.index ["subject_id"], name: "index_study_paths_on_subject_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.integer "division_id"
    t.string "subject_id"
    t.string "name"
    t.string "description"
    t.integer "subjects_id"
    t.integer "units"
    t.boolean "isGE"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["division_id"], name: "index_subjects_on_division_id"
    t.index ["subjects_id"], name: "index_subjects_on_subjects_id"
  end

end