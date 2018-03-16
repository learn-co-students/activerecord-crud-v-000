class CreateMovies < ActiveRecord::Migration[4.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :release_date
      t.string :director
      t.string :lead
      t.datetime :in_theaters
      t.timestamps
    end
  end
end
