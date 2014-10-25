# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: A number of 16 Integers
# Output:TRUE for valid cards and FALSE for invalid cards
# Steps:
# => initialize the CreditCArd class  making so that it recives one parameter (num) that most be exactly 16 integers long, and raise an Argument error if that conditions is not complied
# => Inside the initialize method create a @num_array variable that stores the num value in aan array
# => Create a method "double" that dobles all negative pair index values of @num_array
# => Create a method "break" that converts each element to a string inside @num_array, then
  # => it splits those elements so doble digits number become single digit number , then
  # => flatten the array so its stops being a two dimension array , and finally converts
  # => @num_array back into an integer element array
# => Create a method that sums all integers inside @num_array and stores the result in @sum
# => Create a method "check_card" that check if @sum its a multiple of 10 and return TRUE if it is , and
  # => FALSE if not
# => Profit



# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
# class CreditCard

#   def initialize(num)
#     @num = num.to_s.split("").map{|x| x.to_i}
#     if @num.length != 16
#       raise ArgumentError.new ("The card Number most 16 digits long")
#     end
#   end

#   def double
#     @num_double = @num.each_with_index.map do |value, index|
#       if (index+1).odd?
#         value*2
#       else
#         value
#       end
#     end
#   end

#   def break
#     self.double
#     @num_double  = @num_double.map { |x| x.to_s  }
#     @num_double = @num_double.map { |x| x.split("") }
#     @num_double = @num_double.flatten
#     @num_double_break = @num_double.map { |x| x.to_i  }
#   end

#   def sum
#     self.double
#     self.break
#     @num_sum = @num_double_break.reduce(:+)
#   end

#   def check_card
#     self.double
#     self.break
#     self.sum
#     if @num_sum % 10 == 0
#       true
#     else
#       false
#     end
#   end


# end




# 4. Refactored Solution

class CreditCard

  def initialize(num)
    @num = num.to_s.split("").map{|x| x.to_i}
    if @num.length != 16
      raise ArgumentError.new ("The card Number most 16 digits long")
    end
  end

  def double
    @num_double = @num.each_with_index.map do |value, index|
      if (index+1).odd?
        value*2
      else
        value
      end
    end
  end

  def break
    self.double
    @num_double.map! {|x| x.to_s}
    @num_double.map! {|num| num.length >1? num.split("") : num} # simplified this method
    p @num_double
  end

  def sum
    self.double
    self.break
    @num_sum = @num_double.flatten.reduce(:+)
  end

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



# 1. DRIVER TESTS GO BELOW THIS LINE

# test = CreditCard.new(5468530000176990)
# test.break == true
# p test.check_card
# test = CreditCard.new(5468530000176991)
# p test.check_card == false

card1 = CreditCard.new(5451984690007834)
p card1.check_card

card2 = CreditCard.new(5451984691117834)
p card2.check_card


# 5. Reflection
# This was a fun challenge to test our expertise on how to make modifications and operations over an array
# the algorithm was already set up so there was no need to figure out the logic or do much Pseudocode as
# that was already done for us , this was mor about figuring out how to use ruby methods and literacy
# to take and input and transform it into the desire output. Im certanly more capable now using mehods like
# map , reduce and each than before.


