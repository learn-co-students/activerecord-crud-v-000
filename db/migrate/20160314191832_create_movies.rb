class CreateMovies < ActiveRecord::Migration
   def change
    create_table :movies do |x|
      x.string :title
      x.datetime :release_date
      x.string :director
      x.string :lead
      x.datetime :in_theaters
    end
  end
end
