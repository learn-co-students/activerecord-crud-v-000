class RemoveCreatedAtAndUpdatedAtFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :created_at
    remove_column :movies, :updated_at
  end
end
