# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150922060830) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "courses", force: :cascade do |t|
    t.string   "code"
    t.string   "title"
    t.string   "hosts"
    t.string   "schooltime"
    t.integer  "total_hour"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "group_mentor_ships", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "group_mentor_ships", ["group_id"], name: "index_group_mentor_ships_on_group_id", using: :btree
  add_index "group_mentor_ships", ["mentor_id"], name: "index_group_mentor_ships_on_mentor_id", using: :btree

  create_table "group_teacher_ships", force: :cascade do |t|
    t.integer  "group_id"
    t.integer  "teacher_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "group_teacher_ships", ["group_id"], name: "index_group_teacher_ships_on_group_id", using: :btree
  add_index "group_teacher_ships", ["teacher_id"], name: "index_group_teacher_ships_on_teacher_id", using: :btree

  create_table "groups", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.string   "status_note"
    t.integer  "gstatus_id"
    t.string   "software"
    t.string   "tryout_ip"
    t.string   "tryout_account"
    t.string   "tryout_password"
    t.string   "preliminary_ip"
    t.string   "preliminary_account"
    t.string   "preliminary_password"
    t.string   "final_ip"
    t.string   "final_account"
    t.string   "final_password"
    t.string   "tryout_file"
    t.string   "preliminary_file"
    t.string   "final_file"
    t.string   "tryout_path"
    t.boolean  "tryout_search"
    t.string   "preliminary_path"
    t.boolean  "preliminary_search"
  end

  add_index "groups", ["gstatus_id"], name: "index_groups_on_gstatus_id", using: :btree

  create_table "gstatuses", force: :cascade do |t|
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "roles", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "name"
  end

  create_table "roles_users", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "role_id", null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "skills_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "skill_id", null: false
  end

  create_table "teachers", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.string   "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_courses", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "course_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_courses", ["course_id"], name: "index_user_courses_on_course_id", using: :btree
  add_index "user_courses", ["user_id"], name: "index_user_courses_on_user_id", using: :btree

  create_table "user_skills", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "skill_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_skills", ["skill_id"], name: "index_user_skills_on_skill_id", using: :btree
  add_index "user_skills", ["user_id"], name: "index_user_skills_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.integer  "group_id"
    t.string   "name"
    t.string   "nation"
    t.string   "identity"
    t.date     "birthday"
    t.string   "gender"
    t.string   "experience"
    t.string   "course"
    t.string   "phone"
    t.string   "cell_phone"
    t.string   "address"
    t.boolean  "has_job_bank"
    t.boolean  "agree_job_bank"
    t.string   "password_job_bank"
    t.string   "status_note"
    t.string   "image"
    t.integer  "ustatus_id"
    t.string   "school"
    t.string   "department"
    t.integer  "grade"
    t.string   "system"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["ustatus_id"], name: "index_users_on_ustatus_id", using: :btree

  create_table "ustatuses", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "utilities", force: :cascade do |t|
    t.boolean  "enroll"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "group_mentor_ships", "groups"
  add_foreign_key "group_mentor_ships", "mentors"
  add_foreign_key "group_teacher_ships", "groups"
  add_foreign_key "group_teacher_ships", "teachers"
  add_foreign_key "groups", "gstatuses"
  add_foreign_key "user_courses", "courses"
  add_foreign_key "user_courses", "users"
  add_foreign_key "user_skills", "skills"
  add_foreign_key "user_skills", "users"
  add_foreign_key "users", "ustatuses"
end
