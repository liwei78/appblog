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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110104093702) do

  create_table "apps", :force => true do |t|
    t.string   "title"
    t.text     "desc"
    t.integer  "app_type"
    t.integer  "category"
    t.integer  "star"
    t.string   "author"
    t.datetime "publish_date"
    t.decimal  "price",             :precision => 8, :scale => 2, :default => 0.0
    t.string   "size"
    t.string   "download_url"
    t.integer  "position",                                        :default => 0
    t.string   "icon_file_name"
    t.string   "icon_content_type"
    t.integer  "icon_file_size"
    t.datetime "icon_updated_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "emails", :force => true do |t|
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
