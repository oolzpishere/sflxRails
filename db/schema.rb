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

ActiveRecord::Schema.define(version: 20161008082041) do

  create_table "pages", force: :cascade do |t|
    t.integer  "parent_id"
    t.string   "path"
    t.string   "slug"
    t.string   "custom_slug"
    t.boolean  "show_in_menu",        default: true
    t.string   "link_url"
    t.string   "menu_match"
    t.boolean  "deletable",           default: true
    t.boolean  "draft",               default: false
    t.boolean  "skip_to_first_child", default: false
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.string   "view_template"
    t.string   "layout_template"
    t.string   "title"
    t.string   "menu_title"
    t.text     "body"
    t.text     "side_body"
    t.boolean  "show_in_footer"
    t.string   "locale"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["depth"], name: "index_pages_on_depth"
    t.index ["id"], name: "index_pages_on_id"
    t.index ["lft"], name: "index_pages_on_lft"
    t.index ["parent_id"], name: "index_pages_on_parent_id"
    t.index ["rgt"], name: "index_pages_on_rgt"
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "password_hash"
    t.string   "password_salt"
    t.string   "auth_token"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
