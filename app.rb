require 'sinatra/base'
require './lib/hello'

class DailyDiary < Sinatra::Base
  get '/' do
    @message = Hello.all
    erb :hello_world
  end

  run! if app_file == $0
end
