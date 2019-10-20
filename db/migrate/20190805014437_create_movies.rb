class CreateMovies < ActiveRecord::Migration[5.2]

  # db/migrate/create_movies.rb
  def change
    create_table :movies do |t|
     t.string :title
     t.integer :release_date
     t.string :director
     t.string :lead
     t.boolean :in_theaters
    end
  end

end
