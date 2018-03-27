class CreateMovies < ActiveRecord::Migration
  def change
      create_table :migration do |t|
         t.string  :title
         t.integer :release_date
         t.string :director
         t.string :lead
         t.string :in_theaters
         t.timestamps

       end
     end
end
