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

ActiveRecord::Schema.define(:version => 20130406021611) do

  create_table "SpatialIndex", :id => false, :force => true do |t|
    t.text   "f_table_name"
    t.text   "f_geometry_column"
    t.binary "search_frame"
  end

  create_table "addresses", :force => true do |t|
    t.string  "street",       :null => false
    t.integer "number"
    t.string  "complement"
    t.string  "zip_code"
    t.integer "declarant_id"
  end

  add_index "addresses", ["declarant_id"], :name => "index_addresses_on_declarant_id"

  create_table "declarants", :force => true do |t|
    t.string "name",           :null => false
    t.string "email"
    t.string "place_of_birth"
    t.string "phone"
  end

  create_table "hours", :force => true do |t|
    t.text "description", :null => false
  end

  create_table "occurrences", :force => true do |t|
    t.date    "date",                                                :null => false
    t.text    "description"
    t.integer "type_id"
    t.integer "hour_id"
    t.integer "declarant_id"
    t.spatial "lat_lon",      :limit => {:srid=>-1, :type=>"point"}
  end

  add_index "occurrences", ["declarant_id"], :name => "index_occurrences_on_declarant_id"
  add_index "occurrences", ["hour_id"], :name => "index_occurrences_on_hour_id"
  add_index "occurrences", ["type_id"], :name => "index_occurrences_on_type_id"

  create_table "spatialite_history", :primary_key => "event_id", :force => true do |t|
    t.text "table_name",      :null => false
    t.text "geometry_column"
    t.text "event",           :null => false
    t.text "timestamp",       :null => false
    t.text "ver_sqlite",      :null => false
    t.text "ver_splite",      :null => false
  end

  create_table "types", :force => true do |t|
    t.text "description", :null => false
  end

end
