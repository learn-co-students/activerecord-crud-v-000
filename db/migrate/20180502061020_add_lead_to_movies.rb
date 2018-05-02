class AddLeadToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :lead, :string
  end
end
