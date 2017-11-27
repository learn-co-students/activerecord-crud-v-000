class CreateMoviesV3 < ActiveRecord::Migration
  def change
    create_table :movies_c do |t|
      t.string  :title
      t.integer :release_date
      t.string  :director
      t.string  :lead
      t.boolean :in_theaters
    end
  end
end
