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

ActiveRecord::Schema.define(version: 20170318031849) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cardios", force: :cascade do |t|
    t.string   "cardio_name"
    t.string   "time"
    t.string   "intensity"
    t.string   "distance"
    t.integer  "workout_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["workout_id"], name: "index_cardios_on_workout_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "weights", force: :cascade do |t|
    t.string   "exercise_name"
    t.integer  "set"
    t.integer  "rep"
    t.string   "weight"
    t.integer  "workout_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["workout_id"], name: "index_weights_on_workout_id", using: :btree
  end

  create_table "workouts", force: :cascade do |t|
    t.string   "title"
    t.string   "date"
    t.integer  "user_id"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
    t.boolean  "editable",   default: true
    t.boolean  "stick",      default: true
    t.date     "start"
    t.text     "notes"
    t.index ["user_id"], name: "index_workouts_on_user_id", using: :btree
  end

  add_foreign_key "cardios", "workouts"
  add_foreign_key "weights", "workouts"
  add_foreign_key "workouts", "users"
end
