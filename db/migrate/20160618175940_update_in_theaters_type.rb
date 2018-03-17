class UpdateInTheatersType < ActiveRecord::Migration
  def change
    change_column :movies, :in_theaters, :integer
  end
end
