class CreateMovies < ActiveRecord::Migration
  def change
    drop_table :movies
    create_table :movies do |t|
      t.string :title
      t.datetime :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
    end
  end
end
