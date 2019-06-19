require 'pg'

class Hello
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'diary_test')
    else
      connection = PG.connect(dbname: 'diary')
    end
    
    result = connection.exec("SELECT * FROM hello")
    output = result.map { |row| row['message'] }
    return output[0]
  end
end