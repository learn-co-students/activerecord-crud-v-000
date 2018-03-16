class CreateChangecolumnname < ActiveRecord::Migration
  def change
    rename_column :movies, :in_theatres, :in_theaters
  end
end
