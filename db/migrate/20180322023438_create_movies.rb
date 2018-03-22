class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies
    add_column :movies, :title, :string
    add_column :movies, :release_date, :datetime
    add_column :movies, :director, :string
    add_column :movies, :lead, :string
    add_column :movies, :in_theaters, :boolean
  end
end
