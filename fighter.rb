class Fighter
	attr_reader :name #<--- you can only read, you cannot change
	attr_accessor :health, :power #<--- you can change throughout
	
	def initialize(name, health, power)
		@name = name
		@health = health
		@power = power
	end
	def lose_health(enemy_power, health)
		self.health -= enemy_power
	end
	def attack(enemy)
		enemy.lose_health(self.power, enemy.health)
	end
end

naomi = Fighter.new("Naomi Thomas", 105, 25)
ali = Fighter.new("Muhammad Ali", 100, 20)
tyson = Fighter.new("Mike Tyson", 100, 10)
