class CreateMovies < ActiveRecord::Migration

  def change
    create_table :movies do |t|
      t.string :title
    end
    add_column :movies, :release_date, :date
    add_column :movies, :director, :text
    add_column :movies, :lead, :text
    add_column :movies, :in_theaters, :boolean
  end
end
