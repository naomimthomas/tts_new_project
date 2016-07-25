require_relative 'bear'
require_relative 'ninja'

class Battle
	attr_reader :fighter1, :fighter2
	def initialize(fighter1, fighter2)
		@fighter1 = fighter1
		@fighter2 = fighter2
	end
	def fight
		@fighter1.attack(fighter2)
		@fighter2.attack(fighter1)
		self.battle_status
	end
	def fighter1_attack
		@fighter1.attack(fighter2)
		self.battle_status
	end
	def fighter2_attack
			@fighter2.attack(fighter1)
		self.battle_status
	end
	def battle_status
		puts "#{@fighter1.name} has #{@fighter1.health} health remaining."
		puts "#{@fighter2.name} has #{@fighter2.health} health remaining."
	end
end

bear = Bear.new('Yogi', 100, 20)
ninja = Ninja.new('Chuck Norris', 100, 25)
battle = Battle.new(bear, ninja)

yogi_name = battle.fighter1.name
chuck_name = battle.fighter2.name

puts "Today we have the fight of the century... To the left, we have everyone's favorite bear, #{yogi_name}, and to my right, the infamous #{chuck_name}! Ready? FIGHT!"

until battle.fighter1.health <= 0 || battle.fighter2.health <=0
	battle.fighter1_attack
	2. times do
		battle.fighter2_attack
	end
end

if battle.fighter1.health > battle.fighter2.health
		puts "FIGHT OVER! #{yogi_name} wins! Wait.... what?"
	elsif battle.fighter2.health > battle.fighter1.health
		puts "FIGHT OVER! #{chuck_name} wins... obviously!"	
end