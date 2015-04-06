# U2.W4: Calculate a letter grade!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# What is the input?
# The input is an array with numbers
# What is the output? (i.e. What should the code return?)
# The output should be the letter corresponding to the average of the array.
# What are the steps needed to solve the problem?
# Sum and divide to get average of array parameter
# Check the result above to see which is the grade.
# Return the grade.

# 1. Initial Solution

def get_grade(array)
  grade_number = array.reduce(:+)/array.length
  if grade_number.between?(90, 100)
    return 'A'
  elsif grade_number.between?(80, 89)
    return 'B'
  elsif grade_number.between?(70, 79)
    return 'C'
  else
    return 'D'
  end
end

# 3. Refactored Solution



# 4. Reflection


p get_grade([100, 100, 100]) # => 'A'