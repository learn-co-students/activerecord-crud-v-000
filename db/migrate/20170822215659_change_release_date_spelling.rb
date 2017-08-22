class ChangeReleaseDateSpelling < ActiveRecord::Migration
  def change
    remove_column :movies, :realease_date
    add_column :movies, :release_date, :integer
  end
end
