# rake db:create_migration NAME=create_movies created file
  # sometimes need 2 app bundle exec
class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.integer :release_date
      t.string :director
      t.string :lead
      t.boolean :in_theaters
    end
  end
end

# rake db:migrate to migrate your table
# rake db:migrate SINATRA_ENV=test 2 migrate a test db 2 be able 2 run learn
