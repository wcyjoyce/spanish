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

ActiveRecord::Schema.define(version: 2019_03_03_064358) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "attempts", force: :cascade do |t|
    t.string "answer"
    t.boolean "correct"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "test_id"
    t.index ["test_id"], name: "index_attempts_on_test_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.string "subclass"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tests", force: :cascade do |t|
    t.string "question"
    t.string "answer"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "category_id"
    t.index ["category_id"], name: "index_tests_on_category_id"
  end

  create_table "words", force: :cascade do |t|
    t.string "english"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "spanish"
    t.bigint "category_id"
    t.index ["category_id"], name: "index_words_on_category_id"
  end

  add_foreign_key "attempts", "tests"
  add_foreign_key "tests", "categories"
  add_foreign_key "words", "categories"
end
