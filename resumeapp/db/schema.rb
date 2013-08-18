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

ActiveRecord::Schema.define(version: 20130818130230) do

  create_table "applications", force: true do |t|
    t.integer  "resume_id"
    t.integer  "employer_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cover_letters", force: true do |t|
    t.integer  "resume_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "employers_resumes", id: false, force: true do |t|
    t.integer "employer_id"
    t.integer "resume_id"
  end

  create_table "jobs", force: true do |t|
    t.string   "company_name"
    t.string   "string"
    t.text     "work_summary"
    t.datetime "start_date"
    t.datetime "end_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "resume_id"
  end

  create_table "resumes", force: true do |t|
    t.string   "name"
    t.string   "phone"
    t.string   "email"
    t.string   "street"
    t.string   "city"
    t.string   "state"
    t.integer  "zip"
    t.text     "summary"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "resumes", ["zip"], name: "index_resumes_on_zip"

  create_table "view_histories", force: true do |t|
    t.integer  "resume_id"
    t.datetime "time_viewed"
    t.string   "ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
