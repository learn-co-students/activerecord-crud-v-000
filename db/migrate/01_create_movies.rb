class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.string :director
      t.string :lead

      t.integer :release_date

      t.boolean :in_theaters

      t.timestamps null: false
    end
  end
end
