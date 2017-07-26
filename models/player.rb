require('pry')
require_relative('../db/sql_runner.rb')
require_relative('./runner.rb')
require_relative('./corp.rb')
require_relative('./corp_faction.rb')
require_relative('./runner_faction.rb')
require_relative('./league.rb')

class Player

  attr_reader :id, :league_id

  attr_accessor :first_name, :surname, :tag, :runner_faction_id, :runner_identity_id, :corp_faction_id, :corp_identity_id, :points

def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @surname = options['surname']
    @tag = options['tag']
    @runner_faction_id = options['runner_faction_id'].to_i
    @runner_identity_id = options['runner_identity_id'].to_i
    @corp_faction_id = options['corp_faction_id'].to_i
    @corp_identity_id = options['corp_identity_id'].to_i
    @league_id = options['league_id'].to_i
    @points = options['points'].to_i
end

def save
    sql = "INSERT INTO players
    (
    first_name, 
    surname,
    tag, 
    runner_faction_id, 
    runner_identity_id, 
    corp_faction_id, 
    corp_identity_id,
    league_id,
    points
    )
    VALUES
    (
    '#{@first_name}', 
    '#{@surname}',
    '#{@tag}',
    '#{@runner_faction_id}', 
    '#{@runner_identity_id}', 
    '#{@corp_faction_id}', 
    '#{@corp_identity_id}',
    '#{@league_id}',
    '#{@points}'
    )
    RETURNING id"
    # values = [@first_name, @surname, @tag, @runner_faction, @runner_identity, @corp_faction, @corp_identity, @league_id]
    # results = SqlRunner.run(sql, values)
    # @id = results.first()['id'].to_i
    result = SqlRunner.run(sql)[0]
    @id = result['id']
end

def update()
  sql = "UPDATE players SET
    first_name = '#{@first_name}',
    surname = '#{@surname}',
    tag = '#{@tag}',
    runner_faction_id = '#{@runner_faction_id}',
    runner_identity_id = '#{@runner_identity_id}',
    corp_faction_id = '#{@corp_faction_id}',
    corp_identity_id = '#{@corp_identity_id}',
    league_id = '#{@league_id}',
    points = #{@points}
    WHERE id = '#{@id}';"
  SqlRunner.run( sql )
end

def find_runner_faction
    id = @runner_faction_id
    return Runner_faction.find(id)
end

def find_runner_identity
    id = @runner_identity_id
    return Runner.find(id)
end

def find_corp_faction
    id = @corp_faction_id
    return Corp_faction.find(id)
end

def find_corp_identity
    id = @corp_identity_id
    return Corp.find(id)
end

def find_league
    id = @league_id
    return League.find(id)
end

def find_points

end

def self.find(id)
    sql = "SELECT * FROM players WHERE id = #{id};"
    student = SqlRunner.run(sql)
    result = Player.new(student.first)
    return result
end

def self.find_all
    sql = "SELECT * FROM players"
    players = SqlRunner.run(sql)
    result = players.map {|player| Player.new(player)}
    return result
end

def self.delete(id)
    sql = "DELETE FROM players WHERE id = #{id}"
    SqlRunner.run(sql)
end

def self.delete_all
    sql = "DELETE FROM players;"
    SqlRunner.run(sql)
end

end
