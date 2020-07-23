class ChangeColumnReleaseDate < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :release_date, :integer
  end
end
