require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
  	@confirm = session[:confirm]
  	erb(:play)
  end

  post '/attack' do
    $game.attack($player2)
    session[:confirm] = "#{$player1.name} attacks #{$player2.name}"
    redirect '/play'
  end

  run! if app_file == $0
end
