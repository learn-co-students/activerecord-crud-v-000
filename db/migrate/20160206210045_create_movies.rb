class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title, :director, :lead
      t.integer :release_date
      t.boolean :in_theaters
    end
  end
end
