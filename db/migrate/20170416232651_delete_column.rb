class DeleteColumn < ActiveRecord::Migration
  def change
  	remove_column :movies, :in_theaters?, :boolean
  end
end
