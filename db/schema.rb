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

 

ActiveRecord::Schema.define(version: 2020_03_30_042212) do


  create_table "addresses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.integer "prefecture", null: false
    t.string "city", null: false
    t.integer "post_cord", null: false
    t.string "house_number", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_addresses_on_user_id"
  end

  create_table "brands", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "brand", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "item_id"
    t.index ["item_id"], name: "index_brands_on_item_id"
  end

  create_table "categories", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "ancestry"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.text "src", null: false
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_images_on_item_id"
  end

  create_table "items", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.text "content", null: false
    t.integer "price", null: false
    t.integer "seller_id", null: false
    t.integer "buyer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "postage_payer_id", null: false
    t.bigint "prefecture_id", null: false
    t.bigint "preparation_day_id", null: false
    t.bigint "item_condition_id", null: false
    t.string "brand"
    t.bigint "item_situation_id"
    t.bigint "user_id"
 
    t.integer "buyer_id"
 
    t.bigint "category_id"
    t.index ["category_id"], name: "index_items_on_category_id"
 
    t.index ["item_condition_id"], name: "index_items_on_item_condition_id"
    t.index ["item_situation_id"], name: "index_items_on_item_situation_id"
    t.index ["postage_payer_id"], name: "index_items_on_postage_payer_id"
    t.index ["prefecture_id"], name: "index_items_on_prefecture_id"
    t.index ["preparation_day_id"], name: "index_items_on_preparation_day_id"
    t.index ["user_id"], name: "index_items_on_user_id"
  end

  create_table "orders", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "item_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_orders_on_item_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "profiles", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "family_name", null: false
    t.string "first_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.string "first_name_kana"
    t.string "family_name_kana"
    t.string "birth_year"
    t.string "birth_month"
    t.string "birth_day"
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "nickname"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token"
  end

  add_foreign_key "addresses", "users"
  add_foreign_key "images", "items"
  add_foreign_key "orders", "items"
  add_foreign_key "orders", "users"
  add_foreign_key "profiles", "users"
end
