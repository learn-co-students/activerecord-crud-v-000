class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :release_date
      t.string :director
      t.string :lead
      t.datetime :in_theaters
    # add_column :movies, :title, :string
    # add_column :movies, :release_date, :datetime
    # add_column :movies, :director, :string
    # add_column :movies, :lead, :string
    # add_column :movies, :in_theaters, :datetime
    end
  end
end
