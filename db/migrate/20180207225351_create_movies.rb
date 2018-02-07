class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.datetime :release_date
      t.text :lead
      t.text :director
      t.boolean :in_theaters
      t.timestamp
    end
  end
end
