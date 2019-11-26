require 'sinatra'

# to run using shotgun use command
# shotgun app.rb -p 4567

set :session_secret, 'super secret'

get '/' do
  'hello!'
end

get '/secret' do
  'new secret'
end

get '/random-cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/cat-form' do
  erb(:form)
end

post '/named-cat' do
  @name = params[:name]
  erb(:index)
end
