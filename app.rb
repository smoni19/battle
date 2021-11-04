require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'
require_relative './lib/game'

class Battle < Sinatra::Base
  register Sinatra::Reloader
  set :sessions, true

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:name_1])
    player_2 = Player.new(params[:name_2])
    $game = Game.new(player_1, player_2)
    redirect '/play'
  end

  get '/play'do
    @game = $game
    erb :play
  end

  get '/attack' do
    @game = $game
    @game.attack(@game.player_2)
    @game.switch_turns
    erb :attack
  end

  run! if app_file == $0
end