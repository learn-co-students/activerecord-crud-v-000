class CreateMovies < ActiveRecord::Migration

  def self.create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS movies (
      id INTEGER PRIMARY KEY
    )
    SQL
    ActiveRecord::Base.connection.execute(sql)
  end

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
