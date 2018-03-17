

ActiveRecord::Schema.define(version: 01) do

  create_table "movies", force: :cascade do |t|
    t.string  "title"
    t.integer "release_date"
    t.string  "director"
    t.string  "lead"
    t.boolean "in_theaters"
  end

end
