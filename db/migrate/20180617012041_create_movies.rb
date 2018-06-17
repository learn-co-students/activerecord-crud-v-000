class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movie do |i|
      i.string :title
      i.datetime :release_date
      i.string :director
      i.string :lead
      i.boolean :in_theaters
    end
  end
end
