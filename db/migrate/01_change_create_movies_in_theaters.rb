class ChangeCreateMoviesInTheaters < ActiveRecord::Migration
  def change
    rename_column :movies, :in_theathers, :in_theaters
  end
end
