require 'sinatra/base'
require 'data_mapper'

class Chitter < Sinatra::Base

  require_relative 'data_mapper_setup.rb'

  get '/' do
    @user = User.new
    erb :index
  end

end