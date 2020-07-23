class CreateMovies < ActiveRecord::Migration
  def change
    sql = <<-SQL
      CREATE TABLE IF NOT EXISTS movies (
      id INTEGER PRIMARY KEY, 
      title TEXT, 
      release_date INTEGER,
      director TEXT,
      lead TEXT,
      in_theaters BOOLEAN
      )
    SQL
     
    ActiveRecord::Base.connection.execute(sql)
  end
end
