require_relative 'data_mapper_setup.rb'
require 'sinatra/base'

class Chitter < Sinatra::Base

  get '/' do
    erb :app
  end

end