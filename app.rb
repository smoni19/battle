require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class Battle < Sinatra::Base
  register Sinatra::Reloader
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    $player_1 = Player.new(params[:name_1])
    $player_2 = Player.new(params[:name_2])
    redirect '/play'
  end

  get '/play'do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    @player_2_health = $player_2.health
    #@player_2_health = 60
    erb :play
  end

  get '/attack' do
    @name_1 = $player_1.name
    @name_2 = $player_2.name
    $player_2.damage
    erb :attack
  end

  run! if app_file == $0
end