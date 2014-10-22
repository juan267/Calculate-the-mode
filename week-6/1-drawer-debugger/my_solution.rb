# U2.W6: Drawer Debugger

# I worked on this challenge [by myself, with: ].

# Original Code

class Drawer

  attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    @open = true
  end

  def close
    @open = false
  end

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? Its taking out the last elment of @contents
    @contents.delete(item)
  end

  def dump  # what should this method return? It should return the @contents as an empty array
    @contents.clear
    puts "Your drawer is empty."
  end

  def view_contents
    puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end
end


class Silverware
  attr_reader :type, :clean, :broke

# Are there any more methods needed in this class?

  def initialize(type, clean = true, broke = false)
    @type = type
    @clean = clean
    @broke = broke
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    @clean = true
  end

  def food_war
    @broke = true
  end

end



# DO NOT MODIFY THE DRIVER CODE UNLESS DIRECTED TO DO SO
knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1)
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork"))
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.eat
removed_knife.clean_silverware
raise Exception.new("Your silverware is not actually clean!") unless removed_knife.clean_silverware == true

silverware_drawer.view_contents
silverware_drawer.dump
raise Exception.new("Your drawer is not actually empty") unless silverware_drawer.contents.empty?
silverware_drawer.view_contents

# What will you need here in order to remove a spoon? You may modify the driver code for this error. You will need to have created a spoon Object first and added to the silvereware drawer.
spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)
raise Exception.new("You don't have a spoon to remove") unless silverware_drawer.contents.include?(spoon)
silverware_drawer.remove_item(spoon)
 #What is happening when you run this the first time? You took the spoon out of the drawer to eat with it making it dirty , so cwhen you ask yto the spoon if it is clean it should say false.
spoon.eat
puts spoon.clean #=> this should be false


# DRIVER TESTS GO BELOW THIS LINE

other_drawer = Drawer.new
big_spoon = Silverware.new("big spoon")
other_drawer.add_item(big_spoon)
p other_drawer.contents.empty? == false
other_drawer.dump
p other_drawer.contents.empty? == true
big_spoon.eat
p big_spoon.clean == false
big_spoon.clean_silverware
p big_spoon.clean == true
big_spoon.food_war
p big_spoon.broke == true


# Reflection

# Little fun challenge , besides identifying the bigs and trobleshooting them what really interest me about this
#challenge was seing how object oriented progaming can mimic real work objects and their behaviours, this
# is enlighting to me because now i understand better how i can represent almost every object in the world as an
#object in ruby and behaviours to it. The cahllenge was very easy to accomplish and fun, reading the code was
# the better part of it.
