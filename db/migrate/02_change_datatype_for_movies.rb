


class ChangeDatatypeForMovies < ActiveRecord::Migration

  def change_column
    change_column :movies, :in_theaters, :boolean do |t|
    end
  end

end
