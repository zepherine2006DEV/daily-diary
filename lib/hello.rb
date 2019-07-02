require 'pg'

class Hello
  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'diary_test')
    else
      connection = PG.connect(dbname: 'diary')
    end
    
    result = connection.exec("SELECT * FROM hello")
    result.map do |hello_row|
      Hello.new(id: hello_row['id'], message: hello_row['message'])
    end
  end

  def self.create(message:)
    if ENV['ENVIRONMENT'] == 'test'
      connection = PG.connect(dbname: 'diary_test')
    else
      connection = PG.connect(dbname: 'diary')
    end
    result = connection.exec("INSERT INTO hello (message) VALUES('#{message}') RETURNING id, message;")
    Hello.new(id: result[0]['id'], message: result[0]['message'])
  end

  attr_reader :id, :message

  def initialize(id:, message:)
    @id = id
    @message = message
  end
end