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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111003042950) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                                 :default => "", :null => false
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "name"
    t.string   "surname"
    t.string   "father_name"
    t.integer  "doctor_type_id"
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "client_sexes", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "sex"
  end

  create_table "clients", :force => true do |t|
    t.string   "num_card"
    t.string   "name"
    t.string   "surname"
    t.string   "father_name"
    t.date     "birth_date"
    t.string   "pasp_num"
    t.string   "pasp_seria"
    t.string   "address"
    t.string   "snils"
    t.string   "work_place"
    t.string   "work_position"
    t.string   "benefit_id"
    t.string   "veteran_id"
    t.string   "indiv_reab_programm"
    t.string   "mse_note"
    t.date     "attach_date"
    t.string   "dlo"
    t.string   "decease_mkb_10"
    t.string   "special_note"
    t.date     "detach_date"
    t.string   "notes"
    t.integer  "ins_company_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "client_sex_id"
    t.text     "phones"
  end

  create_table "desease_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostic_test_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "diagnostic_tests", :force => true do |t|
    t.date     "test_date"
    t.string   "result"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "diagnostic_test_type_id"
  end

  create_table "doctor_deseases", :force => true do |t|
    t.integer  "doctor_type_id"
    t.integer  "desease_type_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctor_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "doctors", :force => true do |t|
    t.string   "doctor_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitalization_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "hospitalizations", :force => true do |t|
    t.date     "actual_date"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "hospitalization_type_id"
  end

  create_table "htm_help_notes", :force => true do |t|
    t.date     "actual_date"
    t.integer  "htm_help_type_id"
    t.text     "note"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "htm_help_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ins_companies", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lab_test_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lab_tests", :force => true do |t|
    t.date     "test_date"
    t.integer  "lab_test_type_id"
    t.integer  "client_id"
    t.string   "result"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "lab_tests", ["lab_test_type_id"], :name => "fki_lab_test_type_const"

  create_table "med_diagnostic_test_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "med_diagnostic_tests", :force => true do |t|
    t.date     "test_date"
    t.integer  "med_diagnostic_test_type_id"
    t.text     "result"
    t.integer  "client_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "prof_inspections", :force => true do |t|
    t.integer  "client_id"
    t.date     "actual_date"
    t.integer  "user_id"
    t.text     "conclusion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sanatorium_notes", :force => true do |t|
    t.date     "actual_date"
    t.integer  "client_id"
    t.text     "neediness_reference"
    t.text     "sanatorium_card"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.integer  "doctor_type_id"
    t.string   "encrypted_password",     :limit => 128, :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                         :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "email"
    t.string   "father_name"
  end

  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

end
