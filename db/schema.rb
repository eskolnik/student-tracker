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

ActiveRecord::Schema.define(version: 20170408004523) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name"
    t.datetime "start_date"
    t.datetime "end_date"
  end

  create_table "comments", force: :cascade do |t|
    t.text    "body"
    t.string  "tags"
    t.integer "student_id"
    t.index ["student_id"], name: "index_comments_on_student_id", using: :btree
  end

  create_table "students", force: :cascade do |t|
    t.string  "first_name", null: false
    t.string  "last_name",  null: false
    t.integer "age"
    t.integer "cohort_id",  null: false
    t.index ["cohort_id"], name: "index_students_on_cohort_id", using: :btree
  end

end
