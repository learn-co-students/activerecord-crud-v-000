class Movie < ActiveRecord::Base
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS movies (
  id INTEGER PRIMARY KEY,
  title TEXT,
  length INTEGER,
  release_date INTEGER,
  director TEXT,
  in_theaters INTEGER
  )
  SQL
  ActiveRecord::Base.connection.execute(sql)
end
