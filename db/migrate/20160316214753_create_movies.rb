class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |a|
      a.string :title
    end
  end
end
