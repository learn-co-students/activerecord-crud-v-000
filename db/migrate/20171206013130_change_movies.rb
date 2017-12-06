class ChangeMovies < ActiveRecord::Migration
  def change
    change_table :movies do |t|
      t.remove :lead_actor
      t.string :lead
      t.string :title
    end
  end
end
