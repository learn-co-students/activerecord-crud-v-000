class ChangeColumntypeOfReldateIntheaters < ActiveRecord::Migration
  def change
    remove_columns :movies , :release_date, :in_theaters
    add_column :movies , :release_date, :integer
    add_column :movies, :in_theaters, :integer
  end
end
