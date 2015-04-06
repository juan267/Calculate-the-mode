# 0. Pseudocode

# What is the input?
# An integer
# What is the output? (i.e. What should the code return?)
# The integer as a string but correctly separated by commas.
# What are the steps needed to solve the problem?
# Convert the integer into a string.
# Check the number of characters in the string.
# Insert comma appropiately and return value as string.

# 1. Initial Solution

def separate_comma(integer)
  number_array = integer.to_s.split('').reverse
  counter = 0
  number_array.each_with_index do |number, index|
    counter += 1
    if counter == 4
      counter = 0 
      number_array.insert(index, ',')
    end
  end
  number_array.reverse.join
end


# 3. Refactored Solution



# 4. Reflection
# El insert es raro de manejar al comienzo.

p separate_comma(1000)    # => "1,000"
p separate_comma(1000000) # => "1,000,000"
p separate_comma(0)       # => "0"
p separate_comma(100)     # => "100"
p separate_comma(123498712304987)