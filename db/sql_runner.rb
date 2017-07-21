require('pg')

class Sql_Runner

  def self.run(sql, values)
    begin
      db = PG.connect({dbname: 'netrunner', host: 'localhost'})
      db.prepare("query", sql)
      result = db.exec_prepared("query", values)
    ensure
      db.close
    end
    return result
  end

end
