class CreateMovies < ActiveRecord::Migration
  def change
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS movies (
      id INTEGER PRIMARY KEY,
      title TEXT,
      release_date TEXT,
      director TEXT,
      lead TEXT,
      in_theaters TEXT
       )
SQL
  end
end
