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

ActiveRecord::Schema.define(:version => 20130506130940) do

  create_table "attributes", :force => true do |t|
    t.integer  "AttributeID"
    t.integer  "ProductID"
    t.string   "AttributeName"
    t.string   "AttributeDescription"
    t.string   "AttributeValue"
    t.string   "AttributeValueUnit"
    t.datetime "created_at",           :null => false
    t.datetime "updated_at",           :null => false
  end

  create_table "categories", :force => true do |t|
    t.integer  "CategoryID"
    t.string   "CategoryName"
    t.string   "SubCategory"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  create_table "credentials", :force => true do |t|
    t.integer  "UserID"
    t.string   "Password"
    t.integer  "RoleID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "dummy_tables", :force => true do |t|
    t.string   "name"
    t.string   "lastName"
    t.binary   "isStudent"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "manufacturers", :force => true do |t|
    t.integer  "ManufacturerID"
    t.string   "Name"
    t.string   "Address"
    t.string   "City"
    t.string   "Phone"
    t.string   "Email"
    t.string   "Fax"
    t.string   "PostCode"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "productcategories", :force => true do |t|
    t.integer  "ProductID"
    t.integer  "CategoryID"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "products", :force => true do |t|
    t.integer  "ProductID"
    t.integer  "ManufacturerID"
    t.string   "Name"
    t.string   "Description"
    t.string   "Type"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  create_table "roles", :force => true do |t|
    t.integer  "RoleID"
    t.string   "RoleName"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "stocks", :force => true do |t|
    t.integer  "StoreID"
    t.integer  "ProductID"
    t.decimal  "Price",      :precision => 10, :scale => 0
    t.integer  "Quantity"
    t.datetime "created_at",                                :null => false
    t.datetime "updated_at",                                :null => false
  end

  create_table "stores", :force => true do |t|
    t.integer  "StoreID"
    t.string   "Name"
    t.string   "Address"
    t.string   "City"
    t.string   "Phone"
    t.string   "Email"
    t.string   "PostCode"
    t.string   "StoreType"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.integer  "UserID"
    t.string   "FirstName"
    t.string   "LastName"
    t.string   "Username"
    t.string   "Address"
    t.string   "City"
    t.string   "Postcode"
    t.string   "Phone"
    t.string   "Email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "wishlistitems", :force => true do |t|
    t.integer  "ListID"
    t.integer  "ProductID"
    t.decimal  "DesiredPrice",  :precision => 10, :scale => 0
    t.integer  "PriceVariance"
    t.integer  "Quantity"
    t.string   "StoreType"
    t.datetime "created_at",                                   :null => false
    t.datetime "updated_at",                                   :null => false
  end

  create_table "wishlists", :force => true do |t|
    t.integer  "ListID"
    t.integer  "UserID"
    t.string   "LastName"
    t.date     "LastUpdated"
    t.date     "ValidFrom"
    t.date     "ValidTo"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
