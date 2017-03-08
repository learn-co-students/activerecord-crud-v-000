class CreateMoviesTable < ActiveRecord::Migration
    def change
        create_table(:movies)
    end
end