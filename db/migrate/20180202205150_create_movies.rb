class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |el|
      el.string :title
      el.integer :release_date
      el.string :director
      el.string :lead
      el.boolean :in_theaters
    end
  end
end
