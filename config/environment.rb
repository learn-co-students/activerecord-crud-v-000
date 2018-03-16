require 'bundler/setup'
Bundler.require
require 'rake'
require 'active_record'
require 'yaml/store'
require 'ostruct'
require 'date'

ActiveRecord::Base.establish_connection(
  :adapter => "sqlite3",
  :database => "db/#{ENV['SINATRA_ENV']}.sqlite.to_sym"
)

require_all 'app'
