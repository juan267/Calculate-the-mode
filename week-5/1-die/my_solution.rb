# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: An array of labels "Strings"
# Output: An array containing one of the element form the initial array select by ramdom
# Steps:
# => create a flow condition so that during the initiliaza method if the argument recibes an empty array it returns an argument error
# => create instance variables for length that is equal to the length of the array
# => create instance variable for roll that its equal to a random element from the array
# => define sides so that it retunr @length when call
# => define roll so that it returns @roll when call


# 3. Initial Solution

class Die
  def initialize(labels)
    if labels != []
      @length = labels.length
      @roll = labels.sample
    else
      raise ArgumentError.new("The array most not be empty")
    end
  end

  def sides
    @length
  end

  def roll
    @roll
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides == 6 # still returns the number of sides, in this case 6
p die.roll =="A"



# 4. Refactored Solution

class Die
  attr_reader :sides, :roll
  def initialize(labels)
    if labels != []
      @sides = labels.length
      @roll = labels.sample
    else
      raise ArgumentError.new("The array most not be empty")
    end
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides  # still returns the number of sides, in this case 6
p die.roll






# 1. DRIVER TESTS GO BELOW THIS LINE

p die.sides == 6  # still returns the number of sides, in this case 6






# 5. Reflection
