class CreateMovies < ActiveRecord::Migration
  def change
    # add colums for the following:
    # title, release_date, director, lead, in_theaters
    create_table :movies do |x|
      x.string :title
      x.string :release_date
      x.string :director
      x.string :lead
      x.string :in_theaters

      x.timestamps :null false
    end
  end
end
