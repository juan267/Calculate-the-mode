
# First 'total' method will receive an array.
# Then,runing within the array takes each value and adds it to a final result.
# When it finish to run trough the array, return the final value with the sum of all the vulues

def total(array)
  array.reduce(:+)
end

# 1 Gets the array.
# 2 run trougth it
# 3 return the sum of the strings

def sentence_maker(string)
  string.join(" ")
end

# ------ Testing ------

# total([1,2,3])      # => 6
# total([4.5, 0, -1]) # => 3.5
# total([-100, 100])  # => 0

# sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])
