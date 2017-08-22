class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |a|
      a.string :name
      a.integer :realease_date
      a.string :director
      a.string :lead
      a.boolean :in_theaters
    end
  end
end
