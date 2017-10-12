class CreateMovies < ActiveRecord::Migration

  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :release_date
      t.text :director
      t.text :lead
      t.boolean :in_theaters
      t.timestamps
    end
  end

end
