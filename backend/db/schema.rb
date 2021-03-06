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

ActiveRecord::Schema.define(version: 2022_03_17_072304) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "post_router_items", force: :cascade do |t|
    t.bigint "post_id", null: false
    t.string "path", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "router_id"
    t.bigint "section_id"
    t.index ["path"], name: "index_post_router_items_on_path", unique: true
    t.index ["router_id"], name: "index_post_router_items_on_router_id"
  end

  create_table "post_router_sections", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "post_routers", force: :cascade do |t|
    t.string "title", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string "title", null: false
    t.text "body", null: false
    t.boolean "active", default: false, null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "post_router_items", "post_router_sections", column: "section_id", on_delete: :nullify
  add_foreign_key "post_router_items", "post_routers", column: "router_id", on_delete: :nullify
  add_foreign_key "post_router_items", "posts", on_delete: :cascade
end
