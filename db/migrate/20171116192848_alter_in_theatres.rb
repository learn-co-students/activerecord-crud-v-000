class AlterInTheatres < ActiveRecord::Migration
  def change
    change_column :movies, :in_theatres, :boolean
  end
end
