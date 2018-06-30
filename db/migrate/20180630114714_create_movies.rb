class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |s|
      s.string :title 
      s.datetime :release_date 
      s.string :director 
      s.string :lead 
      s.boolean :in_theaters 
    end
  end
end
