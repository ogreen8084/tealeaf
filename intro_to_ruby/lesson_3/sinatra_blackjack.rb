require 'rubygems'
require 'sinatra'
require 'pry'

set :sessions, true

get '/' do 
  erb :set_name
end



