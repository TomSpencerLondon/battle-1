class Player

	DEFAULT_HIT_POINTS = 100

	attr_reader :name, :points

	def initialize(name, points=DEFAULT_HIT_POINTS)
		@name = name
		@points = points
	end

	def receive_damage(amount=10)
		@points -= amount
	end

end
