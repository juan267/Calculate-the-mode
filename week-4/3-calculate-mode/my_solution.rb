# U2.W4: Calculate the mode
 # Pairing Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.

# I worked on this challenge with: Jesse Germin.

# 0. Pseudocode

# What is the input?
# Array with numbers or strings (no arrays, hashes, etc.)
# What is the output? (i.e. What should the code return?)
# Array with no element that has frequency higher than the rest.
# If we do have higher frequency, we get that element or those elements
#
# What are the steps needed to solve the problem?
# 1. Convert input array into a hash (with a key-value - element and the frequency of the element)
# 2. Calling the hash to look for the value that is the highest frequency - return the key
# 3.
# 4. Zip the values of each key into the original array to get a multidimensional array
# 5. Flatten array
# 6.

# Ex
# [1, 2, 3, 3, 4] -> [1, 2, 3, 4]
# [1, 1, 2, 1]
# [[1, 1], [2, 1], [3, 2], [4, 1]]
# arr = [1, 1, 2, 1, 3, 2, 4, 1]
# arr.Hash[] => {1 => 1, 2 => 1,...}
# newArray[1, 2, 3, 3, 4]


# 1. Initial Solution



# def mode(newArray)
#     frequency = newArray
#     frequency = frequency.group_by{|value| value}.map{|keyValue, value| [keyValue, value.count]}
#     #newArray.each do
#     # frequency = frequency.map{|keyValue value|
#     frequency = Hash[*frequency.flatten] # Hash(*...) Hash[]
#     #frequency.flatten => [1, 2, 3, 3,..] *frequency.flatten => (1,2,3,3...)
#     # arr.Hash[] => {1 => 1, 2 => 1,...}
#     # p frequency
#     #p max = frequency.max_by{|keyValue,value| value}
#     frequencyArr = []
#     frequency.each { |key, value| frequencyArr.push key if value == frequency.values.max }
#     p frequencyArr
#     # => [3,2]
#     # => 3
#     # p max[0]
# end
# mode([1, 2, 3, 4])



# 3. Refactored Solution

def mode(newArray)
    frequency =[newArray.group_by{|value| value}.map{|keyValue, value| [keyValue, value.count]}]
    frequency = Hash[*frequency.flatten]
    frequencyArr = []
    frequency.each { |key, value| frequencyArr.push key if value == frequency.values.max }
    p frequencyArr
end
mode([1, 2, 3, 4,4])


#some testing
# words = ["one", "two", "one", "three", "four", "two", "one"]
# count = words.group_by { |w| w }
# hash = Hash[count.map { |k,v| [k,v.count] }]
# # hash = hash.flatten
# # hash = Hash[*hash]
# # p words.max_by {|v| hash[v]}
# p hash



# 4. Reflection

# This challenge was also painfully hard but fun. It was great working in pairs with jess he help me a lot
# we learn how to use group_by wich takes an array a gruops its elements by a criteria that you pass in
# the block so with that we manage to group each element with its frequency, then we learn how to use map
# wich loops all the elements in an array and transforms them following your criteria tin the block
# so we transforms the array so that intead of repeating each element the number of times it occur it
# show the actual count of its frequecency. then we wrap all that in a hash and call the mas value of the
# hash and return its key value.

