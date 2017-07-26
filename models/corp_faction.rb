require('pry')
require_relative('../db/sql_runner.rb')

  class Corp_faction

    attr_reader :id,:name

    def initialize(options)
      @id = options['id'].to_i if options['id']
      @name = options['name']
      @logo = options['logo']
    end

    def save()
      sql = "INSERT INTO corp_factions
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
      sql = "SELECT * FROM corp_factions WHERE id = #{id}"
      corp_faction = SqlRunner.run(sql)
      result = Corp_faction.new(corp_faction.first)
      return result
    end

    def self.find_all
      sql = "SELECT * FROM corp_factions"
      corp_factions = SqlRunner.run(sql)
      result = corp_factions.map {|corp_faction| Corp_faction.new(corp_faction)}
      return result
    end

  end