class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :release_date
      t.text :director
      t.text :lead
      t.datetime :in_theaters

      # title ,release_date, director, lead, and in_theaters.
    end
  end
end
