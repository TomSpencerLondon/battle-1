class Game

	attr_reader :current_player, :players, :game_over, :sleep

	ATTACKS = %w(Attack Poisons Paralyzes Snooze)

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
		@sleep = 0
	end

	def player1
		@players.first
	end

	def player2
		@players.last
	end

	def attack(player, type='Attack')
		switch_turns
		@players[@current_player].receive_damage(hit_amount(type))
		confirm(type)
	end

	def snooze(player)
		switch_turns
		@sleep = sleep_amount
		@players[@current_player].sleep = true
		confirm("snooze")
	end

	def sleep
		@players[@current_player].sleep
	end

	def switch_turns
		if @sleep > 0
			@sleep -= 1
		else
			@current_player = current_player == 0 ? 1 : 0
		end
	end

	def confirm(type='Attack')
		if @players[@current_player].points <= 0
			@game_over = true
			"#{@players[@current_player].name} has lost the game!"
		else
			"#{@players[@current_player-1].name} #{type.downcase}s #{@players[@current_player].name}"
		end
	end

	private

	def hit_amount(type)
		type == "Poison" ? Kernel.rand(4..6) : Kernel.rand(0..10)
	end

	def sleep_amount
		Kernel.rand(1..3)
	end
end
