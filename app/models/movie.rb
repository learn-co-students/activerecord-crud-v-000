class Movie < ActiveRecord::Base
  attr_accessor :title
  def initialize(title:)
    @title = title
    self.save
  end
  sql = <<-SQL
  CREATE TABLE IF NOT EXISTS movies (
  id INTEGER PRIMARY KEY,
  title TEXT,
  length INTEGER
  )
  SQL
  ActiveRecord::Base.connection.execute(sql)
end
