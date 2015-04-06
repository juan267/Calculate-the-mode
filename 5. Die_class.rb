class Die
 	def initialize(sides)
 		@sides = sides;
 		if @sides <1
 			raise ArgumentError.new("The Dice needs to have at least one side")
 		end
 	end

 	def sides
 		puts @sides
 	end

 	def roll
 		puts rand(1..@sides)
 	end
end

die = Die.new(6) #This creates a new die object with 6 sides
die.sides # returns 6
die.roll # returns a random number between 1 and 6