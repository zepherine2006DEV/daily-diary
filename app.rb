require 'sinatra/base'
require './lib/hello'

class DailyDiary < Sinatra::Base
  get '/' do
    @hello = Hello.all.first
    erb :hello_world
  end

  run! if app_file == $0
end
