class CreateMovies < ActiveRecord::Migration
  def change
    # add_column :movies, :title, :string
    # add_column :movies, :release_date, :integer
    # add_column :movies, :director, :string
    # add_column :movies, :lead, :string
    # add_column :movies, :in_theaters, :boolean
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
    end
  end
end
