#myapp.rb 
require 'sinatra'

params = { :deez => "flours"}

get '/' do 
  'Hello world!'
end

get '/hello/:name' do 
  "Hello #{params['name']}!"
end

