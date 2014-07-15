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

ActiveRecord::Schema.define(version: 20140307153143) do

  create_table "rss_feed_entries", force: true do |t|
    t.string   "entry_id"
    t.string   "title"
    t.string   "author"
    t.string   "link"
    t.datetime "rss_updated"
    t.text     "content"
    t.integer  "rss_feed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rss_feed_entries", ["rss_feed_id"], name: "index_rss_feed_entries_on_rss_feed_id"

  create_table "rss_feeds", force: true do |t|
    t.string   "feed_id"
    t.string   "url"
    t.string   "title"
    t.string   "link"
    t.datetime "rss_updated"
    t.text     "cache"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
