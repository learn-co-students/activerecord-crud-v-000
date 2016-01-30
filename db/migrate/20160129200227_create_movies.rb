class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |x|
    x.string :title
    x.datetime :release_date
    x.string :director
    x.string :lead
    x.boolean :in_theaters
    x.timestamps null: false
    end
  end
end