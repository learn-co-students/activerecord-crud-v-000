class InTheatersSetToBolliean < ActiveRecord::Migration
  def change
    remove_column :movies, :in_theaters
    add_column :movies, :in_theaters, :flag
  end
end
