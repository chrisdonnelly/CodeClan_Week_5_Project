require_relative('../db/sql_runner.rb')

class Player

  attr_reader :first_name, :surname, :runner_faction, :runner_identity, :corp_faction, :corp_identity, :league_id

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @first_name = options['first_name']
    @surname = options['second_name']
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
    runner_faction, 
    runner_identity, 
    corp_faction, 
    corp_identity,
    league_id
    )
    VALUES
    (
    $1, $2, $3, $4, $5, $6
    )
    RETURNING id"
    values = [@first_name, @surname, @runner_faction, @runner_identity, @corp_faction, @corp_identity, @league_id]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

end
