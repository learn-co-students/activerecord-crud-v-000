class UpdateMoviesInTheaters < ActiveRecord::Migration
  def up
    change_column :movies, :in_theaters, :boolean
  end

  def down
    change_column :movies, :in_theaters, :datetime
  end
end
