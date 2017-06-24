class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movie do |t|
    t.string :title
    t.integer :release_date
    t.string :director
    t.string :lead
    t.string :in_theaters
    end
  end
end
