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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150427135026) do

  create_table "carts", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "clubs", :force => true do |t|
    t.string   "name"
    t.string   "homeground"
    t.string   "location"
    t.string   "email"
    t.string   "phone"
    t.text     "crest"
    t.text     "info"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "competitions", :force => true do |t|
    t.string   "name"
    t.decimal  "entry_fee"
    t.text     "rules"
    t.string   "level"
    t.text     "prize"
    t.text     "sponsor"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "fixtures", :force => true do |t|
    t.datetime "datetime"
    t.integer  "winningscore"
    t.integer  "losingscore"
    t.integer  "hometeam_id"
    t.integer  "awayteam_id"
    t.integer  "winningteam_id"
    t.text     "report"
    t.string   "venue"
    t.integer  "competition_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "images", :force => true do |t|
    t.string   "name"
    t.integer  "width"
    t.integer  "height"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "lineitems", :force => true do |t|
    t.integer  "product_id"
    t.integer  "order_id"
    t.integer  "quantity"
    t.integer  "cart_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "managers", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.date     "dateofbirth"
    t.integer  "contract"
    t.integer  "yearsexperience"
    t.string   "nationality"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  create_table "orders", :force => true do |t|
    t.integer  "user_id"
    t.string   "paymethod"
    t.decimal  "total",      :precision => 8, :scale => 2
    t.datetime "created_at",                               :null => false
    t.datetime "updated_at",                               :null => false
  end

  create_table "pics", :force => true do |t|
    t.string   "name"
    t.string   "image"
    t.string   "feeling"
    t.string   "location"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "players", :force => true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "phone"
    t.date     "dateofbirth"
    t.string   "gender"
    t.integer  "squadnumber"
    t.string   "position"
    t.string   "height"
    t.string   "weight"
    t.integer  "team_id"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "products", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.string   "image"
    t.decimal  "price",       :precision => 8, :scale => 2
    t.integer  "quantity"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "level"
    t.text     "kit_image"
    t.integer  "manager_id"
    t.integer  "club_id"
    t.datetime "created_at",                    :null => false
    t.datetime "updated_at",                    :null => false
    t.integer  "competition_id"
    t.integer  "points",         :default => 0
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "email"
    t.date     "dateofbirth"
    t.string   "gender"
    t.string   "status"
    t.string   "password_digest"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.text     "picture"
  end

end
