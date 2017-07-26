require('pry')
require_relative('../db/sql_runner.rb')

class League

  attr_reader :id, :name, :start_date, :end_date, :max_players

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @start_date = options['start_date']
    @end_date = options['end_date']
    @max_players = options['max_players'].to_i
  end

  def save()
    sql = "INSERT INTO leagues
    (
    name, 
    start_date, 
    end_date, 
    max_players
    )
    VALUES
    (
    '#{@name}', 
    '#{@start_date}', 
    '#{@end_date}', 
    '#{@max_players}'
    ) 
    RETURNING id;"
    # values = [@name, @start_date, @end_date, @max_players]
    # results = SqlRunner.run(sql, values)
    # @id = results.first()['id'].to_i
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  def update()
    sql = "UPDATE leagues SET
      name = '#{@name}',
      start_date = '#{@start_date}',
      end_date = '#{@end_date}',
      max_players = '#{@max_players}'
      WHERE id = '#{ @id }';"
    SqlRunner.run( sql )
  end

  def players
    current_players = []  
    sql = "SElECT players.tag, players.points FROM players INNER JOIN leagues ON players.league_id = leagues.id WHERE players.league_id = '#{@id}'"
    players = SqlRunner.run(sql)
    results = players.map {|player| Player.new(player)}
    results.each {|player| current_players.push(player.tag, player.points)}
    return current_players
  end

  def self.players
    sql = "SELECT * FROM leagues"
    leagues = SqlRunner.run(sql)
    result = leagues.map {|league| League.new(league)}
    result.each {|league| league.players}
  end

  def self.find(id)
    sql = "SELECT * FROM leagues WHERE id=#{id};"
    league = SqlRunner.run(sql)
    result = League.new(league.first)
    return result
  end

  def self.find_all
    sql = "SELECT * FROM leagues"
    leagues = SqlRunner.run(sql)
    result = leagues.map {|league| League.new(league)}
    return result
  end

  def self.delete(id)
    sql = "DELETE * FROM leagues WHERE id=#{id};"
    SqlRunner.run(sql)
  end

  def self.delete_all
    sql = "DELETE FROM leagues;"
    SqlRunner.run(sql)
  end

end
