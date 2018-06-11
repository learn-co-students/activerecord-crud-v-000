class UpdateMovies < ActiveRecord::Migration
  def change
    remove_column :movies, :lead_actor, :string
    remove_column :movies, :date, :datetime
    add_column :movies, :lead, :string
    add_column :movies, :date, :integer
  end
end
