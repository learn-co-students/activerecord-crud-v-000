class AddInTheatersColumn < ActiveRecord::Migration
  def change
    add_column :movies, :in_theaters, :boolean
  end
end
