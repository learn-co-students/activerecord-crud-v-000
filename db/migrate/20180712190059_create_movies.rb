class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.column :title, :string
      t.add_column :release_date, :datetime
      t.add_column :director, :string
      t.add_column :lead, :string
      t.add_column :in_theaters, :boolean
    end
  end
end
