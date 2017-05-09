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

ActiveRecord::Schema.define(version: 20170508083103) do

  create_table "careers", force: :cascade do |t|
    t.string   "nombre_carrera"
    t.string   "nombre_abbr"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "faculty_id"
    t.index ["faculty_id"], name: "index_careers_on_faculty_id"
  end

  create_table "faculties", force: :cascade do |t|
    t.string   "nombre_facultad"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "periods", force: :cascade do |t|
    t.string   "nombre_periodo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "school_cycle_id"
    t.integer  "period_type"
    t.index ["school_cycle_id"], name: "index_periods_on_school_cycle_id"
  end

  create_table "school_cycles", force: :cascade do |t|
    t.string   "nombre_ciclo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "career_id"
    t.index ["career_id"], name: "index_school_cycles_on_career_id"
  end

end
