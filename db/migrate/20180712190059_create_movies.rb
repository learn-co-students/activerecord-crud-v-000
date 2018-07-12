class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      add_column :title, :string
      add_column :release_date, :datetime
      add_column :title, :string
      add_column :title, :string
      add_column :title, :string

    end
    file add columns for title ,release_date, director, lead, and in_theaters.
  end
end
