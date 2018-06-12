class RemoveTimestampsFromMovies < ActiveRecord::Migration
	def change
		remove_column :movies, :timestamps
	end
end
