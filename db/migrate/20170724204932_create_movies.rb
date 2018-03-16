class CreateMovies < ActiveRecord::Migration
  def change # db/migrate/20170724204932_create_movies.rb creates mkdir 'migrate' timestamp file
    create_table :movies do |t|
      t.string   :title
      t.integer  :release_date
      t.string   :director
      t.string   :lead 
      t.boolean  :in_theaters
    end 
  end

end
