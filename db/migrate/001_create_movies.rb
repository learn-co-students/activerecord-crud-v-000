class CreateMovies < ActiveRecord::Migration[5.1]
  def change
    create_table :movies do |q|
      q.string :title
      q.integer :release_date
      q.string :director
      q.string :lead
      q.boolean :in_theaters
    end
  end
end
