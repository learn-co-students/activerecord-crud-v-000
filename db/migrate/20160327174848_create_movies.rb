class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.text :director
      t.text :lead
      t.text :in_theatres
    end
  end
end
