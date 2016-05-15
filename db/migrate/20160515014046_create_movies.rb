class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |m|
      # column_names
      m.string :title
      m.date :release_date
      m.string :director
      m.string :lead
      m.boolean :in_theaters
    end
  end
end
