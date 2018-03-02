class CreateMovie < ActiveRecord::Migration
  def change
    create_table :movie do |t|
      t.string   :title
      t.datetime :release_date
      t.string   :director
      t.string   :lead
      t.boolean  :in_theaters
    end
  end
end
