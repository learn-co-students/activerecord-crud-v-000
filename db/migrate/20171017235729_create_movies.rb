class CreateMovies < ActiveRecord::Migration[4.2]
  def change
    # add colums for the following:
    # title, release_date, director, lead, in_theaters
    create_table :movies do |x|
      x.string :title
      x.integer :release_date
      x.string :director
      x.string :lead
      x.boolean :in_theaters

      x.timestamps null: false
    end
  end
end
