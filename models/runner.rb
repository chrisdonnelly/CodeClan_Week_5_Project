 require('pry')
 require_relative('../db/sql_runner.rb')

 class Runner

   attr_reader :name

   def initialize(options)
     @id = options['id'].to_i if options['id']
     @faction = options['faction']
     @name = options['name']
   end

   def save()
     sql = "INSERT INTO runners
     (
     faction,
     name
     )
     VALUES
     (
     '#{}'
     '#{@name}', 
     ) 
     RETURNING id;"
     result = SqlRunner.run(sql)[0]
     @id = result['id']
   end

   def self.find_all
       sql = "SELECT * FROM runners"
       runners = SqlRunner.run(sql)
       result = runners.map {|runner| Runner.new(runner)}
       return result
   end

 end