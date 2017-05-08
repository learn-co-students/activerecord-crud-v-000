class CreateMovies < ActiveRecord::Migration

    def change
     create_table :movies do |t|
      t.string :title
      t.string :director
      t.varchar :release_date
      t.string :lead
      t.integer :in_theaters
      end
    end
end
