require 'data_mapper'

env = ENV['RACK_ENV'] || 'development'

DataMapper.setup(:default, "postgres://localhost/Chitter_#{env}")

require './app/lib/user'

DataMapper.finalize

DataMapper.auto_upgrade!