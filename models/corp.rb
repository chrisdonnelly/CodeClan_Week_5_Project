require('pry')
require_relative('../db/sql_runner.rb')

class Corp

  attr_reader :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @faction = options['faction']
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO corps
    (
    faction,
    name
    )
    VALUES
    (
    '#{@faction}',
    '#{@name}'
    ) 
    RETURNING id;"
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  def self.find_all
      sql = "SELECT * FROM corps"
      corps = SqlRunner.run(sql)
      result = corps.map {|corp| Corp.new(corp)}
      return result
  end

end