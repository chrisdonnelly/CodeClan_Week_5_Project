require('pry')
require_relative('../db/sql_runner.rb')

class Corp

  attr_reader :id,:faction_id, :name

  def initialize(options)
    @id = options['id'].to_i if options['id']
    @corp_faction_id = options['corp_faction_id'].to_i
    @name = options['name']
  end

  def save()
    sql = "INSERT INTO corps
    (
    corp_faction_id,
    name
    )
    VALUES
    (
    '#{@corp_faction_id}',
    '#{@name}'
    ) 
    RETURNING id;"
    result = SqlRunner.run(sql)[0]
    @id = result['id']
  end

  def self.find(id)
    sql = "SELECT * FROM corps WHERE id = #{id}"
    corp = SqlRunner.run(sql)
    result = Corp.new(corp.first)
    return result
  end

  def self.find_faction(id)
    sql = "SELECT corp.faction FROM corps WHERE id = #{id};"
    faction = SqlRunner.run(sql)
    return faction
  end

  def self.find_all
      sql = "SELECT * FROM corps"
      corps = SqlRunner.run(sql)
      result = corps.map {|corp| Corp.new(corp)}
      return result
  end

end