#U2.W6: Attr Methods

# I worked on this challenge [by myself, with:]

class NameData
  attr_reader :name
  def initialize
    @name ="Juan Gomez"
  end
end

yo = NameData.new

class Greetings
  attr_reader :name
  def initialize(nameData)
    @name = nameData.name
  end
  def say_hi
    puts "Hola como estas #{@name}"
  end
end

yo2 = Greetings.new(yo)
yo2.say_hi



# Reflection
# At first this seems to be a very easy challenge to do, but i reealise that
# comunicating instance variables from one class to another is not as simple as i have
# thought at first. I really dont like my solution i dont find it to be elegant or
# simple i will continue studying ultin i find a better solution  there most be one.