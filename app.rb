require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  register Sinatra::Reloader
  set :sessions, true
  # Set a session value

  get '/' do
    erb :index
  end

  post '/names' do
    session[:name_1] = params['name_1']
    session[:name_2] = params['name_2']
    # @name_1 = params[:name_1]
    # @name_2 = params[:name_2]
    redirect '/play'

  end

  get '/play'do
    @name_1 = session[:name_1]
    @name_2 = session[:name_2]
    @player_2_health = 60
    erb :play
  end

  run! if app_file == $0
end