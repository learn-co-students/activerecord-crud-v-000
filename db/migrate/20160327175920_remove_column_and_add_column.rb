class RemoveColumnAndAddColumn < ActiveRecord::Migration
  def change
    remove_column :movies, :in_theatres, :boolean
    add_column :movies, :in_theaters, :boolean
  end
end
