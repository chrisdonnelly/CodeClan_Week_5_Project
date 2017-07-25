require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('controllers/players_controller')
require_relative('controllers/leagues_controller')
require_relative('controllers/games_controller')

get '/' do
  erb( :index )
end