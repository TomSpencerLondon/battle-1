class Game

	attr_reader :current_player, :players, :game_over

	def self.create(player1, player2)
  	@game = Game.new(player1, player2)
	end

	def self.instance
  	@game
	end

	def initialize(player1, player2)
		@players = [player1, player2]
		@current_player = 0
		@game_over = false
	end

	def player1
		@players.first
	end

	def player2
		@players.last
	end

	def attack(player)
		switch_turns
		@players[@current_player].receive_damage(hit_amount)
	end

	def switch_turns
		@current_player = current_player == 0 ? 1 : 0
	end

	def confirm
		if @players[@current_player].points <= 0
			@game_over = true
			"#{@players[@current_player].name} has lost the game!"
		else
			"#{@players[@current_player-1].name} attacks #{@players[@current_player].name}"
		end
	end

	def hit_amount
		Kernel.rand(0..10)
	end
end
