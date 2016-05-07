class CreateMovies < ActiveRecord::Migration
  def change
     add_column :movies, :title, :string
     add_column :movies, :release_date, :string
     add_column :movies, :director, :string
     add_column :movies, :lead, :string
     add_column :movies, :in_theaters, :string
  end
end
