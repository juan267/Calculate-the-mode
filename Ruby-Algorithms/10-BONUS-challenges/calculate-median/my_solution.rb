# U2.W4: Calculate the Median!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# An array of numbers
# What is the output? (i.e. What should the code return?)
# It should return the median fo the numbers in the array.
# What are the steps needed to solve the problem?
# First, we have to sort the array to have it in order of least to greatest.
# Then, we need to check if the number of elements is even or odd.
# If it is odd, we only have to take the number that is in the middle of the array.
# Because division rounds down, we can take the number of elements in the array
# and divided by two.
# If it is even, we need to add the the numbers that are in the position of the 
# length of the array divided by two, and the one in the position before. We
# can then sum that numbers and divide by two.

# 1. Initial Solution
def median(array)
  array = array.sort
  if array.length.odd?
    array[array.length/2]
  else
    (array[(array.length/2)] + array[(array.length/2)-1])/2
  end
end


# 3. Refactored Solution



# 4. Reflection



p median([1,2,3])      # => 2
p median([4.5, 0, -1]) # => 0
p median([-100, 100])  # => 0.0

# 0. Pseudocode

# What is the input?
# An array of words
# What is the output? (i.e. What should the code return?)
# It should return the word whose letter is between the other two.
# What are the steps needed to solve the problem?
# Sort array of strings
# Take string that is in the middle position.

# 1. Initial Solution

def string_median(array)
  array = array.sort
  array[array.length/2]
end

p string_median(["apple","cherry","banana"])

# 3. Refactored Solution



# 4. Reflection
