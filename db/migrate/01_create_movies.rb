class CreateMovies < ActiveRecord::Migration

  def change
    create_table :movies do |t|
      t.string :title
      t.datetime :relase_date
      t.string :director
      t.string :lead_actor_actress
      t.boolean :in_theaters
    end
  end
end
