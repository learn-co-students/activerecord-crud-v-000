require 'bundler/setup'
Bundler.require

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite"
)
# Had to add this since the logger was in debug showing every SQL sentence everytime the test ran.
# ActiveRecord::Base.logger.level = 1  # or Logger::INFO
ActiveRecord::Base.logger = nil

require_all 'app'
