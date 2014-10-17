#U2.W6: Attr Methods

# I worked on this challenge [by myself, with:]

# class NameData
#   attr_reader :name
#   def initialize
#     @name ="Juan Gomez"
#   end
# end

# yo = NameData.new

# class Greetings
#   attr_reader :name
#   def initialize(nameData)
#     @name = nameData.name
#   end
#   def say_hi
#     puts "Hola como estas #{@name}"
#   end
# end




# Refactor solution

class NameData
  attr_reader :name
  def initialize
    @name = "Juan Gomez"
  end
end

class Greetings
  def initialize
    @name = NameData.new.name
  end

  def greeting
    puts "Hi , #{@name}"
  end
end

test = Greetings.new
test.greeting



# Reflection
# At first this seems to be a very easy challenge to do, but i reealise that
# comunicating instance variables from one class to another is not as simple as i have
# thought at first. I really dont like my solution i dont find it to be elegant or
# simple i will continue studying until i find a better solution , there most be one. So after some further
# investigation i realized that i could create a new object of the class NameData inside the class Greetings and asign
# one of its methods to a instace variable of Greetings and work with that.