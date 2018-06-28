class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |m|
      m.text :title
      m.date :release_date
      m.text :director
      m.text :lead
      m.boolean :in_theaters
    end
  end
end
