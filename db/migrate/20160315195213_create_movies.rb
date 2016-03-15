class CreateMovies < ActiveRecord::Migration
  def change
    create_table(:movies) do |t|
      t.column :title, :text
      t.column :release_date, :datetime
      t.column :director, :text
      t.column :lead, :text
      t.column :in_theaters, :text
    end
  end
end
