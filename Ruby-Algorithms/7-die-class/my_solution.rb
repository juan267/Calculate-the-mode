class Die

  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("Invalid number of sides")
    else
      @sides = sides
    end
  end

  def sides
    return @sides
  end

  def roll
   rand(1..@sides)
  end
end

die = Die.new(6) #This creates a new die object with 6 sides
p die.sides # returns 6
p die.roll # returns a random number between 1 and 6
die = Die.new(0)