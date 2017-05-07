class Movie < ActiveRecord::Base
  def self.create_table
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS movies (
    id INTEGER PRIMARY KEY,
    title TEXT
  )
  SQL

  ActiveRecord::Base.connection.execute(sql)
 end
end
