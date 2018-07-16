ActiveRecord::Schema.define(version: 1) do

  create_table "movies", force: :cascade do |t|
    t.string "title"
    t.datetime "release_date"
    t.string "director"
    t.string "lead"
    t.boolean "in_theaters"
  end

end