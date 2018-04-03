class FixMovieColumns < ActiveRecord::Migration
  def change
    rename_column :movies, :movies, :title
  end
end
