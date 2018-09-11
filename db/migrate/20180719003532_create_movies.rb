class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |table|
      table.text :title
      table.datetime :release_date
      table.text :director
      table.text :lead
      table.text :in_theaters
    end
  end
end
