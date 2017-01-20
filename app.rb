require 'sinatra/base'
require './lib/player'
require './lib/game'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    player1 = Player.new(params[:player1_name], params[:player_1_char])
    player2 = Player.new(params[:player2_name], params[:player_2_char])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
  	@confirm = session[:confirm]
  	erb(:play)
  end

  post '/attack' do
    @game = Game.instance
    @game.attack(@game.current_player)
    session[:confirm] = @game.confirm
    @game.game_over ? redirect('/game-over') : redirect('/play')
  end

  get '/game-over' do
    @confirm = session[:confirm]
    erb(:game_over)
  end

  run! if app_file == $0
end
