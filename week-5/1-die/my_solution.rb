# U2.W5: Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, with:].

# 2. Pseudocode

# Input: An array of labels "Strings"
# Output: An array containing one of the element form the initial array select by ramdom
# Steps:
# => create a flow condition so that during the initiliaza method if the argument recibes an empty array it returns an argument error
# => create instance variables for length that is equal to the length of the array
# => create instance variable for roll that its equal to a random element from the array
# => define sides so that it retunr @length when call
# => define roll so that it returns @roll when call


3. Initial Solution

class Die
  def initialize (labels)
    @labels = labels
    @sides = labels.size
    if labels == []
      raise ArgumentError.new ("The array most not be empty")
    end
    def sides
      @sides
    end
    def roll
      @labels.sample
    end
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides
p die.roll



# 4. Refactored Solution

class Die
  attr_reader :sides
  def initialize (labels)
    if labels == []
      raise ArgumentError.new ("The array most not be empty")
    else
     @labels= labels
     @sides = @labels.size
   end
   def roll
     @roll = @labels.sample
   end
  end
end

die = Die.new(['A', 'B', 'C', 'D', 'E', 'F'])
p die.sides  # still returns the number of sides, in this case 6
p die.roll






# 1. DRIVER TESTS GO BELOW THIS LINE

p die.sides == 6  # still returns the number of sides, in this case 6






# 5. Reflection
# After reading chapter 3 from the well grounded rubyest it was quite easy to solve this
# challenge, the problem that i encounter and tht thanks to the google+ comunnity i
# managed to slove was that, i need to define @roll inside the roll instance method
# and not inside the initialize method, otherwise i would get an rspec error, but
# the problem now is that im not being able to pass the test when using the Refactored
# solution and i dont have a roll instance method there to fix the issue so im stil
# trying to figure that one out.
