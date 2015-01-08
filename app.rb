require('sinatra')
require('sinatra/reloader')
require('./lib/score.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @user_input = params.fetch('word')
  @points = @user_input.score()
  erb(:results)
end
