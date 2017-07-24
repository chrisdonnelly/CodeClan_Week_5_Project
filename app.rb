require( 'sinatra' )
require( 'sinatra/contrib/all' ) if development?
require_relative('controllers/players_controller')
require_relative('controllers/leagues_controller')

get '/' do
  erb( :index )
end