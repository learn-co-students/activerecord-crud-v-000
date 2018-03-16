class CreateMovies < ActiveRecord::Migration
  def change

    create_table :movies do |col|
      col.string :title
      col.integer :release_date
      col.string :director
      col.string :lead
      col.boolean :in_theaters
    end
  end
end
