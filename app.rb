require 'sinatra'



set :session_secret, 'super secret'#this line under require

get '/' do
   "Whatever you like"
end

get '/secret' do
  "HAHHAHAHAHAHAH"
end

get '/random-cat' do
  @name = (["Amigo", "Oscar", "Viking"]).sample
  erb(:index)
end

get '/named-cat' do
  p params #changing params from the query string
  @name = params[:name]
  erb(:index)
end
