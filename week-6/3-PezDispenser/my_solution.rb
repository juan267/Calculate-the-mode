# U2.W6: PezDispenser Class from User Stories SOLO CHALLENGE


# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order
#      of the flavors coming up.


# 2. Pseudocode

# => I have to create the pez dispenser so i can create pex dispenser instances out of it .
# => each pezdispenser instance most be initialize with an array of flavors and store that value as an instance variable
# => the user also should be able to see_all_pez that the pezdispenser instance has, so see_all_pez should be an atibute of each instance that can be read but not write
# => to count the amount of flavors inside the dispenser i have to create and instance method pez_count with the instance variable @pez_count that its equal to the lechg of the @flavors array
# => I have t create an instance method add_pez that takes one parameter (flavor ) and appends that flavor to the @flavors array
# => i need to create an instance method that takes the first element of the @flavors array destructuly and return it.





# 3. Initial Solution

class PezDispenser
  attr_reader :see_all_pez
  def initialize(flavors)
    @flavors = flavors
    @see_all_pez = @flavors
  end

  def pez_count
    @pez_count = @flavors.length
  end

  def add_pez(flavor)
    @flavors << flavor
  end

  def get_pez
    @flavors.shift
  end
end



# 5. Refactored Solution

#not much to do here






# 1. DRIVER TESTS GO BELOW THIS LINE

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry)
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"
puts "Here's a look inside the dispenser:"
puts super_mario.see_all_pez
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
p super_mario.pez_count == 9
super_mario.add_pez("mandarina")
p super_mario.pez_count == 10
super_mario.get_pez
p super_mario.pez_count == 9
p super_mario.see_all_pez == ["cola", "grape", "lemon", "orange", "peppermint", "raspberry", "strawberry", "purple", "mandarina"] # i take out the shuffle in order to make this test work




# 6. Reflection
# i didnt know user stories before so it was cool learning about them , they seems to be very usefull to translate ,
#user requierements to code. This challenge was easy the behavioirs of the pez dispenser where easy to understand
# and implement as code, the dificult thing now is knowing if the code does comply with OOP good practices. I also
# realized that i could not make pez_count as an attr_reader because it would be stuck with the value when it was first
# initialize and it didnt update this value , so i had to make as a instance method instead.