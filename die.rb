class Die

	attr_accessor :sides
	def initialize(number)
		unless number >= 1 
    	raise ArgumentError.new("Should be one or above")
  		end
		@sides = number
		
	end
	def roll
		@roll  = rand(1..@sides)
	end

end

dice1 =  Die.new(6)
p dice1.sides
p dice1.roll