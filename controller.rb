require'pry'
require'sinatra'
require'sinatra/contrib/all'
require_relative'./models/player.rb'
require_relative'./models/league.rb'

get '/players' do
    @players = Player.find_all
    erb(:index)
  end