class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :name
    end
    #add_column :table, :column, :datatype
    add_column :movies, :title, :string
    add_column :movies, :release_date, :integer
    add_column :movies, :director, :string
    add_column :movies, :lead, :string
    add_column :movies, :in_theaters, :integer
  end
end
