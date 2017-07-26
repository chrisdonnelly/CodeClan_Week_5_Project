require('pry')
require_relative('../db/sql_runner.rb')
require_relative('./runner.rb')
require_relative('./corp.rb')
require_relative('./corp_faction.rb')
require_relative('./runner_faction.rb')
require_relative('./league.rb')
require_relative('./player.rb')

class Game

  attr_reader :id, :league_id, :round1_runner_player_id, :round1_runner_faction_id, :round1_runner_identity_id, :round1_corp_player_id, :round1_corp_faction_id, :round1_corp_identity_id, :round1_winner_id, :round2_runner_player_id, :round2_runner_faction_id, :round2_runner_identity_id, :round2_corp_player_id, :round2_corp_faction_id, :round2_corp_identity_id, :round2_winner_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @league_id = options['league_id'].to_i
    @round1_runner_player_id = options['round1_runner_player_id'].to_i
    @round1_runner_faction_id = options['round1_runner_faction_id'].to_i
    @round1_runner_identity_id = options['round1_runner_identity_id'].to_i
    @round1_corp_player_id = options['round1_corp_player_id'].to_i
    @round1_corp_faction_id = options['round1_corp_faction_id'].to_i
    @round1_corp_identity_id = options['round1_corp_identity_id'].to_i
    @round1_winner_id = options['round1_winner_id'].to_i
    @round2_runner_player_id = options['round2_runner_player_id'].to_i
    @round2_runner_faction_id = options['round2_runner_faction_id'].to_i
    @round2_runner_identity_id = options['round2_runner_identity_id'].to_i
    @round2_corp_player_id = options['round2_corp_player_id'].to_i
    @round2_corp_faction_id = options['round2_corp_faction_id'].to_i
    @round2_corp_identity_id = options['round2_corp_identity_id'].to_i
    @round2_winner_id = options['round2_winner_id'].to_i
  end

  def save
    sql = "INSERT INTO games 
    (
    league_id,
    round1_runner_player_id,
    round1_runner_faction_id,
    round1_runner_identity_id, 
    round1_corp_player_id,
    round1_corp_faction_id, 
    round1_corp_identity_id,
    round1_winner_id, 
    round2_runner_player_id,
    round2_runner_faction_id, 
    round2_runner_identity_id, 
    round2_corp_player_id,
    round2_corp_faction_id, 
    round2_corp_identity_id, 
    round2_winner_id
    )
    VALUES
    (
    '#{@league_id}',
    '#{@round1_runner_player_id}',
    '#{@round1_runner_faction_id}',
    '#{@round1_runner_identity_id}',
    '#{@round1_corp_player_id}',
    '#{@round1_corp_faction_id}',
    '#{@round1_corp_identity_id}',
    '#{@round1_winner_id}',
    '#{@round2_runner_player_id}',
    '#{@round2_runner_faction_id}', 
    '#{@round2_runner_identity_id}',
    '#{@round2_corp_player_id}',
    '#{@round2_corp_faction_id}',
    '#{@round2_corp_identity_id}', 
    '#{@round2_winner_id}'
    )
    RETURNING id;"
  
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  def find_league
    id = @league_id
    return League.find(id)
  end

  def find_round1_runner_player
    id = @round1_runner_player_id
    return Player.find(id)
  end

  def find_round1_runner_faction
    id = @round1_runner_faction_id
    return Runner_faction.find(id)
  end

  def find_round1_runner
    id = @round1_runner_identity_id
    return Runner.find(id)
  end

  def find_round1_corp_player
    id = @round1_corp_player_id
    return Player.find(id)
  end

  def find_round1_corp_faction
    id = @round1_corp_faction_id
    return Corp_faction.find(id)
  end

  def find_round1_corp
    id = @round1_corp_identity_id
    return Corp.find(id)
  end

  def find_round1_winner
    id = @round1_winner_id
    return Player.find(id)
  end

  def find_round2_runner_player
    id = @round2_runner_player_id
    return Player.find(id)
  end

  def find_round2_runner_faction
    id = @round2_runner_faction_id
    return Runner_faction.find(id)
  end

  def find_round2_runner
    id = @round2_runner_identity_id
    return Runner.find(id)
  end

  def find_round2_corp_player
    id = @round2_corp_player_id
    return Player.find(id)
  end

  def find_round2_corp_faction
    id = @round2_corp_faction_id
    return Corp_faction.find(id)
  end

  def find_round2_corp
    id = @round2_corp_identity_id
    return Corp.find(id)
  end

  def find_round2_winner
    id = @round2_winner_id
    return Player.find(id)
  end

  def self.find_all
      sql = "SELECT * FROM games"
      games = SqlRunner.run(sql)
      result = games.map {|game| Game.new(game)}
      return result
  end

end