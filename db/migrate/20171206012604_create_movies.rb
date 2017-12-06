class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.datetime :release_date
      t.string :director
      t.string :lead_actor
      t.boolean :in_theaters
    end
  end
end
