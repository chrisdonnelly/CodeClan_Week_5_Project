require('pry')
require_relative('../models/game.rb')
require_relative('../models/runner_faction.rb')
require_relative('../models/corp_faction.rb')


get '/games' do
    @games = Game.find_all
    erb(:"games/index")
end

get '/games/new' do
  @runners = Runner.find_all
  @corps = Corp.find_all
  @runner_factions = Runner_faction.find_all
  @corp_factions = Corp_faction.find_all
  @leagues = League.find_all
  @players = Player.find_all
  @game = Game.new(params)
  erb(:"games/new")
end

# post '/players' do
#   new_player = Player.new(params)
#   new_player.save
#   redirect to '/players'
# end

# get '/players/edit/:id' do
#   @leagues = League.find_all
#   @player = Player.find(params[:id])
#   erb(:"players/edit")
# end

# post '/players/update/:id' do
#   Player.new(params).update
#   redirect to'/players'
# end