class UpdateInTheatersColumn < ActiveRecord::Migration
  def change
    change_column :movies, :in_theaters, :bit
  end
end
