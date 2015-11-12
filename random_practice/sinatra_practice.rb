require 'rubygems'
require 'sinatra'

set :sessions, :true

get '/inline' do 
	"Hi, directly from the action!"
end

#renders a template
get '/template' do 
	erb :mytemplate
end
