require'pry'
require_relative('../models/player.rb')
require_relative('../models/runner_faction.rb')
require_relative('../models/corp_faction.rb')

get '/players' do
    @players = Player.find_all
    erb(:"players/index")
end

get '/players/new' do
  @runners = Runner.find_all
  @corps = Corp.find_all
  @runner_factions = Runner_faction.find_all
  @corp_factions = Corp_faction.find_all
  @leagues = League.find_all
  @player = Player.new(params)
  erb(:"players/new")
end

post '/players' do
  new_player = Player.new(params)
  new_player.save
  redirect to '/players'
end

get '/players/edit/:id' do
  @runners = Runner.find_all
  @corps = Corp.find_all
  @runner_factions = Runner_faction.find_all
  @corp_factions = Corp_faction.find_all
  @leagues = League.find_all
  @player = Player.find(params[:id])
  erb(:"players/edit")
end

post '/players/update/:id' do
  Player.new(params).update
  redirect to'/players'
end