class CreateMovies < ActiveRecord::Migration
  def change
    add_column :movies, :title, :string
    add_column :movies, :release_date, :date
    add_column :movies, :director, :string
    add_column :movies, :lead, :string
    add_column :movies, :in_theaters, :boolean
  end
end
