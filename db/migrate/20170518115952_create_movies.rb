class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |table|
      table.string :title
      table.datetime :release_date
      table.string :director
      table.string :lead
      table.string :in_theaters
    end
  end
end
