class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.text :title
      t.datetime :release_date
      t.text :director
      t.text :lead
      t.datetime :in_theaters
    end

  #title ,release_date, director, lead, and in_theaters
  end
end
