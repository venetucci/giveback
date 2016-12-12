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

ActiveRecord::Schema.define(version: 20161212002516) do

  create_table "compliments", force: :cascade do |t|
    t.string   "message",    default: "", null: false
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "donations", force: :cascade do |t|
    t.string   "name",              default: "", null: false
    t.string   "email",             default: "", null: false
    t.string   "amount",            default: "", null: false
    t.text     "organization_note", default: "", null: false
    t.text     "personal_note",     default: "", null: false
    t.integer  "organization_id",                null: false
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "organizations", force: :cascade do |t|
    t.string   "name",             default: "",    null: false
    t.text     "description",      default: "",    null: false
    t.string   "reason_to_donate", default: "",    null: false
    t.string   "slug",             default: "",    null: false
    t.string   "info_url",         default: "",    null: false
    t.string   "donation_url",     default: "",    null: false
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "sort_order",       default: 0,     null: false
    t.string   "featured_content", default: "",    null: false
    t.boolean  "hidden",           default: false, null: false
  end

end
