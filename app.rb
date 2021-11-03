require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  register Sinatra::Reloader
  set :sessions, true

  get '/' do
    "Hello battle!"
  end

  run! if app_file == $0
end