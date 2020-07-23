class ChangeReleaseDateSpelling < ActiveRecord::Migration[5.2]
  def change
      rename_column :movies, :relese_date, :release_date
  end
end
