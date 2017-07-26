require('pry')
require_relative('../db/sql_runner.rb')

  class Runner_faction

    attr_reader :id, :name

    def initialize(options)
      @id = options['id'].to_i if options['id']
      @name = options['name']
      @logo = options['logo']
    end

    def save()
      sql = "INSERT INTO runner_factions
      (
      name,
      logo
      )
      VALUES
      (
      '#{@name}',
      '#{@logo}'
      ) 
      RETURNING id;"
      result = SqlRunner.run(sql)[0]
      @id = result['id']
    end

    def self.find(id)
      sql = "SELECT * FROM runner_factions WHERE id = #{id}"
      runner_faction = SqlRunner.run(sql)
      result = Runner_faction.new(runner_faction.first)
      return result
    end

    def self.find_all
      sql = "SELECT * FROM runner_factions"
      runner_factions = SqlRunner.run(sql)
      result = runner_factions.map {|runner_faction| Runner_faction.new(runner_faction)}
      return result
    end

  end