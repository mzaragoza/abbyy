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

ActiveRecord::Schema.define(version: 20150802001709) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "clients", force: :cascade do |t|
    t.string   "company_name",  default: ""
    t.string   "first_name",    default: ""
    t.string   "last_name",     default: ""
    t.string   "phone",         default: ""
    t.string   "email",         default: ""
    t.string   "extention",     default: ""
    t.string   "fax",           default: ""
    t.string   "cell",          default: ""
    t.string   "address",       default: ""
    t.string   "city",          default: ""
    t.string   "state",         default: ""
    t.string   "zipcode",       default: ""
    t.string   "facebook",      default: ""
    t.string   "linkedin",      default: ""
    t.string   "tweeter",       default: ""
    t.string   "website",       default: ""
    t.string   "business_card", default: ""
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
