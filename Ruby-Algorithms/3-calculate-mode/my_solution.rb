# 0. Pseudocode

# What is the input?
# An array of numbers or words
# What is the output? (i.e. What should the code return?)
# The element that is most repeated in the array.
# What are the steps needed to solve the problem?ñ
# Add elements of array into a hash 
# Keep count of how many times an element is repeated in the hash.
# Return element with more repetitions. 
# If there are two or more elements with more repetitions then display them.

# 1. Initial Solution

def mode(array)
  repeat = {}
  max_array = []
  array.each do |n|
    if repeat[n].nil?
      repeat[n] = 1
    else
        repeat[n] = repeat[n] + 1
    end
  end
  max = repeat.max_by {|key, value| value }
  number = max[1]
  repeat.each do |key, value|
    if repeat[key] == number
      max_array.push(key)
    end
  end
  max_array
end

# 3. Refactored Solution



# 4. Reflection


p mode([4.5, 0, 0])       # => [0]
p mode([1.5, -1, 1, 1.5]) # => [1.5]
p mode([1,1,2,2])         # => [1,2]
p mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
p mode(["who", "what", "where", "who"]) # => "who"