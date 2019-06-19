require 'sinatra/base'

class DailyDiary < Sinatra::Base
  get '/' do
    erb :hello_world
  end

  run! if app_file == $0
end
