require 'hello'

describe Hello do
  it 'should return a hello world message from the database' do
    expect(Hello.all).to eql("Hello World")
  end
end