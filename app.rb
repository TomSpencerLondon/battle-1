require 'sinatra/base'
require './lib/player'

class Battle < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player1 = Player.new(params[:player1_name])
    $player2 = Player.new(params[:player2_name])
    redirect '/play'
  end

  get '/play' do
  	@confirm = session[:confirm]
    @player1_points = 0
    @player2_points = 0
  	erb(:play)
  end

  post '/attack' do
    session[:confirm] = "#{$player1.name} attacks #{$player2.name}"
    redirect '/play'
  end

  run! if app_file == $0
end
