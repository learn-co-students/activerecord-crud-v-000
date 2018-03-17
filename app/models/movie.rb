#class Movie < ActiveRecord::Base
#end

class Movie < ActiveRecord::Base

  def self.create_table
    # create table using SQL here
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS movies (
      id INTEGER PRIMARY KEY,
      title TEXT,
      release_date INTEGER,
      director TEXT,
      lead TEXT,
      in_theaters TEXT
    )
    SQL

    ActiveRecord::Base.connection.execute(sql)
  end

end
