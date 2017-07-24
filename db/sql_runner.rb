require('pg')

class SqlRunner

  def self.run(sql)
    begin
      db = PG.connect({dbname:'netrunner', host:'localhost'})
      # db.prepare("query", sql)
      # result = db.exec_prepared("query", values)
      result = db.exec(sql)
    ensure
      db.close
    end
    return result
  end

end