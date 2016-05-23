class CreateMovies < ActiveRecord::Migration
  def change
    #Once you have a migration file add columns for title ,release_date, director, lead, and in_theaters.
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
    end
  end
end
