class CreateMovies < ActiveRecord::Migration
  def change
    # create_table(:movies) do |t|
    #   t.column :title, :text
    #   t.column :release_date, :datetime
    #   t.column :director, :text
    #   t.column :lead, :text
    #   t.column :in_theaters, :boolean
    # end
    create_table :movies do |t|
      t.string  :title
      t.integer :release_date
      t.string  :director
      t.string  :lead
      t.boolean :in_theaters
    end
  end
end
