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

ActiveRecord::Schema.define(version: 20180616022918) do

  create_table "contacts", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "captcha"
  end

  create_table "experiences", force: :cascade do |t|
    t.string   "name"
    t.string   "link"
    t.string   "position"
    t.string   "description"
    t.string   "date"
    t.string   "picture"
    t.integer  "order_listed"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "information", force: :cascade do |t|
    t.string   "headline"
    t.string   "about_myself"
    t.string   "development_experience"
    t.string   "interests"
    t.string   "github"
    t.string   "linkedin"
    t.string   "facebook"
    t.string   "instagram"
    t.string   "resume_link"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "project_type"
    t.string   "website"
    t.string   "github"
    t.integer  "order_listed"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.string   "documentation"
    t.string   "picture"
    t.string   "tools"
  end

end
