ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end

task :drop_and_migrate do
  puts "dropping database"
  system("rm db/development.sqlite")
  system("rm db/schema.rb")
  system("rm db/test.sqlite")
  puts "migrating database"
  system("rake db:migrate && rake db:migrate SINATRA_ENV=test")

end
