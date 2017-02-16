class ChangeColumnTypes < ActiveRecord::Migration
  def change
    change_column :movies, :release_date, :datetime
    change_column :movies, :in_theaters, :datetime
  end
end
