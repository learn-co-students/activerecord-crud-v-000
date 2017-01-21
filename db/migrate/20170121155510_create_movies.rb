class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |col_name|
      col_name.string :title
      col_name.integer :release_date
      col_name.string :director
      col_name.string :lead
      col_name.boolean :in_theaters
    end
  end
end
