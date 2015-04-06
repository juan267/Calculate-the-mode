class Die
  attr_accessor :sides

  def initialize(sides)
    if sides < 1
      raise ArgumentError.new("You must have at least one side!")
    else
      @sides = sides
    end
  end

  def roll
    rand(1..@sides)
  end
end

die = Die.new(6) #This creates a new die object with 6 sides
p die.sides # returns 6
p die.roll # returns a random number between 1 and 6
die = Die.new(0)