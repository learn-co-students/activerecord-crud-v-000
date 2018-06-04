
class ChangeDatatypeForMovies2 < ActiveRecord::Migration

  def change_column
    change_column :movies, :in_theaters, :boolean
  end

end
