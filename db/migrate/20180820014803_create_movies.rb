require 'pry'
class CreateMovies < ActiveRecord::Migration[5.2]
  def change
  #  binding.pry
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.string :lead
      t.string :director
      t.boolean :in_theaters
    end
    #binding.pry
  end
end
