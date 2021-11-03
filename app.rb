require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  register Sinatra::Reloader
  set :sessions, true

  get '/' do
    "Testing infrastructure working!"
  end

  run! if app_file == $0
end