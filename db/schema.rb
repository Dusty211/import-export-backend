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

ActiveRecord::Schema.define(version: 2019_04_03_185353) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "job_options", force: :cascade do |t|
    t.string "option_text"
    t.integer "morality"
    t.integer "criminality"
    t.bigint "job_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["job_id"], name: "index_job_options_on_job_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer "streetcred_mod"
    t.string "cargo"
    t.integer "cargo_value"
    t.text "job_text"
    t.bigint "npc_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["npc_id"], name: "index_jobs_on_npc_id"
  end

  create_table "npcs", force: :cascade do |t|
    t.string "name"
    t.integer "min_streetcred"
    t.integer "max_streetcred"
    t.integer "npc_karma"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "job_options", "jobs"
  add_foreign_key "jobs", "npcs"
end
