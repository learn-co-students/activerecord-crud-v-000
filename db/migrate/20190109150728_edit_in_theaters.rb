class EditInTheaters < ActiveRecord::Migration[5.2]
  def change
    rename_column :movies, :in_theatres, :in_theaters
  end
end
