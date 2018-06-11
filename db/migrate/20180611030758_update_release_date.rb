class UpdateReleaseDate < ActiveRecord::Migration
  def change
    remove_column :movies, :date, :integer
    add_column :movies, :release_date, :integer
  end
end
