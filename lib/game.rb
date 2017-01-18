class Game

	attr_reader :current_player, :players

	def initialize(player1, player2)
		@players = [player1, player2]
		@current_player = 0
	end

	def player1
		@players.first
	end

	def player2
		@players.last
	end

	def attack(player)
		switch_turns
		@players[@current_player].receive_damage
	end

	def switch_turns
		@current_player = current_player == 0 ? 1 : 0 
	end

	def confirm
		"#{@players[@current_player-1].name} attacks #{@players[@current_player].name}"
	end

end
