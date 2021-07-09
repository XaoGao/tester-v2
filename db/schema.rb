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

ActiveRecord::Schema.define(version: 2021_07_09_112411) do

  create_table "answers", force: :cascade do |t|
    t.integer "level"
    t.text "text"
    t.integer "question_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_answers_on_question_id"
  end

  create_table "departments", force: :cascade do |t|
    t.string "name", default: ""
    t.boolean "lock", default: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "patients", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "middle_name", null: false
    t.boolean "lock", null: false
    t.string "document_number", null: false
    t.integer "current_doctor_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["current_doctor_id"], name: "index_patients_on_current_doctor_id"
  end

  create_table "phones", force: :cascade do |t|
    t.string "number"
    t.boolean "lock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "positions", force: :cascade do |t|
    t.string "name", default: ""
    t.boolean "lock", default: false
    t.integer "level"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.string "text"
    t.integer "level"
    t.integer "test_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["test_id"], name: "index_questions_on_test_id"
  end

  create_table "testings", force: :cascade do |t|
    t.integer "doctor_id"
    t.integer "patient_id"
    t.integer "test_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["doctor_id"], name: "index_testings_on_doctor_id"
    t.index ["patient_id"], name: "index_testings_on_patient_id"
    t.index ["test_id"], name: "index_testings_on_test_id"
  end

  create_table "tests", force: :cascade do |t|
    t.string "name"
    t.boolean "lock"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "first_name", default: ""
    t.string "last_name", default: ""
    t.string "middle_name", default: ""
    t.integer "role"
    t.boolean "lock", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "department_id"
    t.integer "position_id"
    t.integer "phone_id"
    t.index ["department_id"], name: "index_users_on_department_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["phone_id"], name: "index_users_on_phone_id"
    t.index ["position_id"], name: "index_users_on_position_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "patients", "users", column: "current_doctor_id"
  add_foreign_key "testings", "users", column: "doctor_id"
end
