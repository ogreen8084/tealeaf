require 'rubygems'
require 'sinatra'

use Rack::Session::Cookie, :key => 'rack.session',
						   :path => '/',
						   :secret => 'your_secret'


get '/new_game' do 
  erb :game_template 
end

post '/myaction' do 
  puts params['username']
  erb :bet_template
end


get '/text' do 
  'Yeah I think I got it somewhat'
end

get '/mytemplate' do 
  erb :makeatemplate
end