require 'hello'

describe Hello do
  it 'should return a hello world message from the database' do
    connection = PG.connect(dbname: 'diary_test')
    Hello.create(message: "Hello World")
    #connection.exec("INSERT INTO hello VALUES(1, 'Hello World');")
    hello_list = Hello.all
    expect(hello_list.length).to eq(1)
    expect(hello_list.first).to be_a Hello
    expect(hello_list.first.message).to eq 'Hello World'
  end

  it 'should create a new Hello' do
    hello = Hello.create(message: 'Hi there')
    persisted_data = PG.connect(dbname: 'diary_test').query("SELECT * FROM hello WHERE id = #{hello.id};")
    expect(hello).to be_a Hello
    expect(hello.message).to eq 'Hi there'
  end
end