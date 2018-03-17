class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |col|
      col.string :title
      col.string :director
      col.string :lead
      col.datetime :release_date
      col.boolean :in_theaters
    end
  end
end
