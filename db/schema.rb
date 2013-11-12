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

ActiveRecord::Schema.define(version: 20131108124244) do

  create_table "reminder_infos", force: true do |t|
    t.integer  "iteration"
    t.integer  "consumer_id"
    t.integer  "consumer_med_id"
    t.integer  "reminder_type_id"
    t.datetime "start_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reminder_schedules", force: true do |t|
    t.integer  "day_of_week"
    t.integer  "day_of_month"
    t.integer  "reminder_info_id"
    t.datetime "due_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reminder_types", force: true do |t|
    t.string   "reminder_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
