require('pry')
require_relative('../db/sql_runner.rb')

class Player

  attr_reader :league_id

  attr_accessor :first_name, :surname, :runner_faction, :runner_identity, :corp_faction, :corp_identity

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @surname = options['second_name']
    @tag = options['tag']
    @runner_faction = options['runner_faction']
    @runner_identity = options['runner_identity']
    @corp_faction = options['corp_faction']
    @corp_identity = options['corp_identity']
    @league_id = options['league_id'].to_i
  end

  def save
    sql = "INSERT INTO players
    (
    first_name, 
    surname,
    tag 
    runner_faction, 
    runner_identity, 
    corp_faction, 
    corp_identity,
    league_id
    )
    VALUES
    (
    #{first_name}, 
    #{surname},
    #{tag},
    #{runner_faction}, 
    #{runner_identity}, 
    #{corp_faction}, 
    #{corp_identity},
    #{league_id}
    )
    RETURNING id"
    # values = [@first_name, @surname, @tag, @runner_faction, @runner_identity, @corp_faction, @corp_identity, @league_id]
    # results = SqlRunner.run(sql, values)
    # @id = results.first()['id'].to_i
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  def self.find(id)
    sql = "SELECT * FROM players WHERE id=#{id};"
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
    sql = "DELETE * FROM players WHERE id=#{id};"
    SqlRunner.run(sql)
  end

  def self.delete_all
    sql = "DELETE FROM players;"
    SqlRunner.run(sql)
    end




end
