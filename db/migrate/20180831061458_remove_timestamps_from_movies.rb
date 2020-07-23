class RemoveTimestampsFromMovies < ActiveRecord::Migration[5.2]
  def change
    remove_column :movies, :timestamps
  end
end
