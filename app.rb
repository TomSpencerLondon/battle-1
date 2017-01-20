require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player1_name],params[:player_1_char]),Player.new(params[:player2_name],params[:player_2_char]))
    redirect '/play'
  end

  get '/play' do
  	@confirm = session[:confirm]
    @game = $game
  	erb(:play)
  end

  post '/attack' do
    $game.attack($game.current_player)
    session[:confirm] = $game.confirm
    $game.game_over ? redirect('/game-over') : redirect('/play')
  end

  get '/game-over' do
    @confirm = session[:confirm]
    erb(:game_over)
  end

  run! if app_file == $0
end
