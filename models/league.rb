require('pry')
require_relative('../db/sql_runner.rb')

class League

  attr_accessor :name, :start_date, :end_date, :max_players

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @name = options['name']
    @start_date = options['start_date']
    @end_date = options['end_date']
    @max_players = options['max_players'].to_i
  end

  def save
    sql = "INSERT INTO leagues
    (
    name, 
    start_date, 
    end_date, 
    max_players,
    )
    VALUES
    (
    $1, $2, $3, $4
    )
    RETURNING id"
    values = [@name, @start_date, @end_date, @max_players]
    results = SqlRunner.run(sql, values)
    @id = results.first()['id'].to_i
  end

end
