class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title, :director, :lead
      t.integer :release_date
      t.boolean :in_theaters
    end
  end
end
