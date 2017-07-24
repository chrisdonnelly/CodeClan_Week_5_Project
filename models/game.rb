require('pry')
require_relative('../db/sql_runner.rb')

class Game

  attr_reader

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @round1_runner_player_id = options['round1_runner_player'].to_i
    @round1_runner_faction = options['round1_runner_faction']
    @round1_runner_identity = options['round1_runner_identity']
    @round1_corp_player_id = options['round1_corp_player_id'].to_i
    @round1_corp_faction = options['round1_corp_faction']
    @round1_corp_identity = options['round1_corp_identity']
    @round1_winner_id = options['round_winner_id'].to_i
    @round2_runner_player_id = options['round2_runner_player_id'].to_i
    @round2_runner_faction = options['round2_runner_faction']
    @round2_runner_identity = options['round2_runner_identity']
    @round2_corp_player_id = options['round2_corp_player_id'].to_i
    @round2_corp_faction = options['round2_corp_faction']
    @round2_corp_identity = options['round2_corp_identity']
    @round2_winner_id = options['round2_winner_id'].to_i
  end

  def save
    sql = "INSERT INTO games 
    (
    round1_runner_player_id,
    round1_runner_faction, 
    round1_runner_identity, 
    round1_corp_player_id, 
    round1_corp_faction, 
    round1_corp_identity,
    round1_winner_id, 
    round2_runner_player_id, 
    round2_runner_faction,
    round2_runner_identity, 
    round2_corp_player_id, 
    round2_corp_faction, 
    round2_corp_identity, 
    round2_winner_id, 
    )
    VALUES
    (
    '#{@round1_runner_player_id}',
    '#{@round1_runner_faction}',
    '#{@round1_runner_identity}',
    '#{@round1_corp_player_id}',
    '#{@round1_corp_faction}',
    '#{@round1_corp_identity}',
    '#{@round1_winner_id}',
    '#{round2_runner_player_id}, 
    '#{round2_runner_faction},
    '#{round2_runner_identity}, 
    '#{round2_corp_player_id}, 
    '#{round2_corp_faction}, 
    '#{round2_corp_identity}, 
    '#{round2_winner_id}
    )
    RETURNING id"
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  def self.find_all
      sql = "SELECT * FROM games"
      games = SqlRunner.run(sql)
      result = games.map {|game| Game.new(game)}
      return result
  end

end