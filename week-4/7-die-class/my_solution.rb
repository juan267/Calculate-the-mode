# U2.W4: Die Class 1: Numeric


# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# Input: integer greater than 0
# Output: for the sides method it retunr the initial integer pass to the instance class, fot the roll method it returns a random integer between 1 and the initial integer pass including it .
# Steps:
#Define initialize so that the die class aceppts one argument
# create argument error condition so that the Die class only
#accepts positive numbers.
# set a instance varible that stores the sides argument
# define the sides method that returns the value store in the
#instance varible @sides
#define the roll


# 1. Initial Solution

class Die
  def initialize(sides)
    unless (sides > 0)
    raise ArgumentError.new("Only positive numbers are allowed")
  end
    @sides = sides
  end

  def sides
    return @sides
  end

  def roll
    rand(1..@sides)
  end
end

die = Die.new() #This creates a new die object with 6 sides
p die.sides
p die.roll



# 3. Refactored Solution

# I think it will be nearly imposible to write this with less lines
# so i will leave my initail solution as it is.







# # 4. Reflection
# This was an easy but educating challenge. Several things where new to me during this challenge. My knowñedge of classes is now a lot more deep and i learn how to used the very useful initialized constructor method. I now know what an instace class , instance variable and class variable is. And learn how to implement an argument error.