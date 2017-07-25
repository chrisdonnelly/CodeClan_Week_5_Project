require('pry')
require_relative('../db/sql_runner.rb')

  class Runner

    attr_reader :id, :faction_id, :name

    def initialize(options)
      @id = options['id'].to_i if options['id']
      @runner_faction_id = options['runner_faction_id'].to_i
      @name = options['name']
    end

    def save()
      sql = "INSERT INTO runners
      (
      runner_faction_id,
      name
      )
      VALUES
      (
      '#{@runner_faction_id}',
      '#{@name}'
      ) 
      RETURNING id;"
      result = SqlRunner.run(sql)[0]
      @id = result['id']
    end

    def self.find(id)
      sql = "SELECT * FROM runners WHERE id = #{id};"
      runner = SqlRunner.run(sql)
      result = Runner.new(runner.first)
      return result
    end

    def self.find_faction(id)
      sql = "SELECT runners.faction FROM runners WHERE id = #{id};"
      faction = SqlRunner.run(sql)
      return faction
    end

    def self.find_all
      sql = "SELECT * FROM runners"
      runners = SqlRunner.run(sql)
      result = runners.map {|runner| Runner.new(runner)}
      return result
    end

  end
