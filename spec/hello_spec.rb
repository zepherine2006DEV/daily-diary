require 'hello'

describe Hello do
  it 'should return a hello world message from the database' do
    connection = PG.connect(dbname: 'diary_test')
    connection.exec("INSERT INTO hello VALUES(1, 'Hello World');")
    expect(Hello.all).to eql("Hello World")
  end
end