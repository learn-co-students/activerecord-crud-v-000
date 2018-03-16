class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |film|
      film.string :title
      film.datetime :release_date
      film.string :director
      film.string :lead
      film.boolean :in_theaters
    end
  end
end
