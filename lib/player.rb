class Player

	DEFAULT_HIT_POINTS = 100

	attr_reader :name, :char, :points
	attr_accessor :sleep

	def initialize(name, char, points=DEFAULT_HIT_POINTS)
		@name = name
		@char = char
		@points = points
		@sleep = false
	end

	def receive_damage(amount=10)
		@points -= amount
	end

end
