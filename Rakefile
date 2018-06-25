ENV["SINATRA_ENV"] ||= "development"

require_relative './config/environment'
require 'sinatra/activerecord/rake'

# Type `rake -T` on your command line to see the available rake tasks.

task :console do
  Pry.start
end

# namespace :db do
#   desc 'migrate changes to your database'
#   task :create_migration => :environment do
#     Movie.create_table
#   end
#   task :environment do
#     require_relative './config/environment'
#   end
  
#   desc 'seed the database with some dummy data'
#   task :seed do 
#     require_relative './db/seeds.rb'
#   end
# end