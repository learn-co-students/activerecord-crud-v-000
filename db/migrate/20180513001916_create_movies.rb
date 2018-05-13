class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |m|
      m.string :title
      m.datetime :release_date
      m.string :director
      m.string :lead
      m.boolean :in_theaters
    end
  end
end
