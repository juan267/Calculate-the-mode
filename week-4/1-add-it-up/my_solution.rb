# U2.W4: Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge [by myself, with: ].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an Array of integers
# Output: an integer that is the sum of al the integers inside the array
# Steps to solve the problem:
# create a method call total that takes one parameter that is an array
# i need a variable that stores the sum of each element inside the array
# then i need to iterate each element in the array to sum it to the variable that i created
# then i return the variable


# 1. total initial solution

def total(int_array)
  result = 0
  int_array.each {|x| result += x}
  return result
end

puts total([1,2,3])




# 3. total refactored solution

def total(int_array)
  int_array.reduce(:+)
  #int_array.inject {|memo, int| memo + int}
end

puts total([1,2,3])




# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: Array of strings
# Output: String with capital letter begining and dot at the end.
# Steps to solve the problem:
# create method sentence_maker with uno parameter for a string array (str_array)
# create local varible to keep the concatenated strings (result)
# call the each iterator on str_array so that it adds each string inside the array to (result)
# call capitalize on result and add "." to it


#5. sentence_maker initial solution

def sentence_maker (str_array)
  result= str_array.join(" ")
  result = result.capitalize+"."
end

puts sentence_maker(["hola",456,"estas"])



# 6. sentence_maker refactored solution

def sentence_maker (str_array)
  result= str_array.join(" ").capitalize+"."
end

puts sentence_maker(["hola",456,"estas"])

# 7. reflection

#This challenge was a lot harder than what we where doing before, the first one with just integers was easier for me as you didnt need to capitalize and add the dot at the end and keep spaces between words, those things give me a lot of problems with the sentence_maker. bofore finding the join method i was using the each iterator to add the words and spaces but it was creating a issue for me because after that when i add the dot at the end it always was one spce apart from the last word, and that was because i had a space to the last word also in the each step, i try for several hours how to fix this issue but with no succes until i found the join method for arrays that di just what i need and let me add the dot at the end with no problems whoot..
