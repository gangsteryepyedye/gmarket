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

ActiveRecord::Schema.define(:version => 20110504002452) do

  create_table "books", :force => true do |t|
    t.string   "department"
    t.string   "course"
    t.integer  "section"
    t.string   "title"
    t.string   "isbn"
    t.integer  "price"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories", :force => true do |t|
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
  end

  create_table "items", :force => true do |t|
    t.string    "name"
    t.float     "price"
    t.string    "description"
    t.boolean   "bs"
    t.boolean   "status"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.integer   "category_id"
    t.integer   "user_id"
    t.integer   "condition"
    t.float     "secondprice"
    t.string    "photo_file_name"
    t.string    "photo_content_type"
    t.integer   "photo_file_size"
    t.string    "picture_file_name"
    t.string    "picture_content_type"
    t.integer   "picture_file_size"
    t.timestamp "picture_updated_at"
    t.boolean   "show",                 :default => true
    t.string    "isbn"
  end

  create_table "users", :force => true do |t|
    t.string    "provider"
    t.string    "uid"
    t.string    "name"
    t.timestamp "created_at"
    t.timestamp "updated_at"
    t.boolean   "admin",      :default => false
    t.string    "picture"
    t.string    "phone"
    t.string    "email"
  end

end
