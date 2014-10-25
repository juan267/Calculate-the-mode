# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution

class CreditCard

  def initialize(num)
    @num = num.to_s.split("").map{|x| x.to_i}
    if @num.length != 16
      raise ArgumentError.new ("The card Number most be 16 digits long")
    end
  end

  # this method is to long for waht its just doing it can be greatly simplified by using each.index and
  #using the array[] method for retiving the value of the index and modifing it
  def double
    @num_double = @num.each_with_index.map do |value, index|
      if (index+1).odd?
        value*2
      else
        value
      end
    end
  end

  # This methods to start with its badly name as break is a ruby keyword, then the conersion to string and and
  #to see if each element is longer than 1 digit can be simplified a lot by using to_s.each_char.map(&:to_i)
  def break
    self.double
    @num_double.map! {|x| x.to_s}
    @num_double.map! {|num| num.length >1? num.split("") : num} # simplified this method
    p @num_double
  end

  #the use of reduce its fine, but theres not need to create a two dimensional array , and therefore the need
  #to use fletten.
  def sum
    double
    self.break
    @num_sum = @num_double.flatten.reduce(:+)
  end
  # all lines from 51 to 54 are unnecessary , in fact the whole flow control is unesesarry here we just need
  # @num_sum % 10 == 0 and that it.
  def check_card
    self.double
    self.sum
    if @num_sum % 10 == 0
      true
    else
      false
    end
  end


end





# Refactored Solution

class CreditCard

  def initialize(card_number)
    @array = card_number.to_s.each_char.map(&:to_i)
    raise ArgumentError.new("You have entered an invalid card number.") unless @array.size == 16
  end

  def check_card
    @array.each_index{|i| @array[i]*=2 if i % 2 == 0}
    @array.to_s.each_char.map(&:to_i).reduce(:+) % 10 == 0
  end

end






# DRIVER TESTS GO BELOW THIS LINE

card1 = CreditCard.new(5451984690007834)
p card1.check_card

card2 = CreditCard.new(5451984691117834)
p card2.check_card





# Reflection

# At first i thought that i will take somebody else solution and refactor that , since i ad the belief
# that my solution was already very concise, but once i start looking a t other people solution , reality
# hit me and i realized that my solution was in fact the one that needed the most refactoring how blind
# was i. So this challenge help more on a cultural level , it let me realized that i need to be more humble
# regarding my solutions and look more often to ther people solutions and search for room for improvement.