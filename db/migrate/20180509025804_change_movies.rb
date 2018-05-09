class ChangeMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :in_theaters
    add_column :movies, :in_theaters, :boolean
  end
end
