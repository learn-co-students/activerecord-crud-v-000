class CreateMovies < ActiveRecord::Migration[4.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.date :release_date
      t.string :director
      t.string :lead
      t.string :in_theaters
    end
  end
end
