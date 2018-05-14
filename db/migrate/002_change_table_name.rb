class ChangeTableName < ActiveRecord::Migration
    def change
      rename_table :moves, :movies
    end


end
