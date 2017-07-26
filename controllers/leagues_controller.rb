require'pry'
require_relative'../models/league.rb'

get '/leagues' do 
    @leagues = League.find_all
    erb(:"leagues/index")
end

get '/leagues/new' do
  @league = League.new(params)
  erb(:"leagues/new")
end

post '/leagues' do
  new_league = League.new(params)
  new_league.save
  redirect to ('/leagues')
end

get '/leagues/players' do
  @leagues = League.find_all
  erb(:"leagues/players")
end

get '/leagues/:id/edit/' do
  @league = League.find(params[:id])
  erb(:"leagues/edit")
end

post '/leagues/:id/update/' do
  League.new(params).update
  redirect to ('/leagues')
end



