class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |m|
      m.string :title
      m.string :director
      m.string :lead
      m.datetime :release_date
      m.boolean :in_theaters

      m.timestamps null: false
    end
  end
end
