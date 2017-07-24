require'pry'
require_relative'../models/game.rb'

get '/games' do
    @games = Game.find_all
    erb(:"games/index")
end

# get '/players/new' do
#   @leagues = League.find_all
#   @player = Player.new(params)
#   erb(:"players/new")
# end

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