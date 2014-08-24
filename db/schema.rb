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

ActiveRecord::Schema.define(version: 20140824152606) do

  create_table "authors", force: true do |t|
    t.string   "name"
    t.text     "biography"
    t.string   "birth_country"
    t.date     "birth_year"
    t.date     "death_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "books", force: true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "isbn"
    t.integer  "published_year"
    t.integer  "author_id"
  end

  create_table "books_genres", id: false, force: true do |t|
    t.integer "book_id"
    t.integer "genre_id"
  end

  add_index "books_genres", ["book_id", "genre_id"], name: "index_books_genres_on_book_id_and_genre_id", using: :btree

  create_table "genres", force: true do |t|
    t.string "name"
    t.text   "description"
  end

  create_table "languages", force: true do |t|
    t.string "name"
  end

end
