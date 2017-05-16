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

ActiveRecord::Schema.define(version: 20170516093916) do

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

  create_table "groups", force: :cascade do |t|
    t.string   "clave_grupo"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "period_has_group_has_students", force: :cascade do |t|
    t.integer  "student_subject_type"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "student_id"
    t.integer  "period_has_groups_id"
    t.index ["period_has_groups_id"], name: "index_period_has_group_has_students_on_period_has_groups_id"
    t.index ["student_id"], name: "index_period_has_group_has_students_on_student_id"
  end

  create_table "period_has_groups", force: :cascade do |t|
    t.boolean  "lunes"
    t.boolean  "martes"
    t.boolean  "miercoles"
    t.boolean  "jueves"
    t.boolean  "viernes"
    t.boolean  "sabado"
    t.string   "horario_clases"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "teacher_id"
    t.integer  "period_id"
    t.index ["period_id"], name: "index_period_has_groups_on_period_id"
    t.index ["teacher_id"], name: "index_period_has_groups_on_teacher_id"
  end

  create_table "periods", force: :cascade do |t|
    t.string   "nombre_periodo"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "school_cycle_id"
    t.integer  "period_type"
    t.index ["school_cycle_id"], name: "index_periods_on_school_cycle_id"
  end

  create_table "presences", force: :cascade do |t|
    t.integer  "presence_type"
    t.date     "fecha_asistencia"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "school_cycles", force: :cascade do |t|
    t.string   "nombre_ciclo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.integer  "career_id"
    t.index ["career_id"], name: "index_school_cycles_on_career_id"
  end

  create_table "scores", force: :cascade do |t|
    t.boolean  "aplicar_parcial"
    t.integer  "score_type"
    t.float    "calification"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "matricula"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "correo_electronico"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "nombre_tutor"
    t.string   "telefono_tutor"
    t.string   "correo_tutor"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string   "nombre_materia"
    t.integer  "subject_type"
    t.string   "clave_materia"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.integer  "group_id"
    t.index ["group_id"], name: "index_subjects_on_group_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.string   "grado"
    t.string   "correo_electronico"
    t.string   "telefono"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "user_type"
    t.string   "nombre"
    t.string   "apellido_paterno"
    t.string   "apellido_materno"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
