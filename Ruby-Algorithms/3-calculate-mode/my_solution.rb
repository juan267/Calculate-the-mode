# input the array
# set empty variables to use
# get and compare the values
# if there are equal values, they are pushed to a Hash with the value of the array as a key and the value of the hash as a count
# Return the values into an Array and change the 'has' variable to true
# If there is no repetitive values, it returns the original array

def mode(ary)

  result = []
  count = {}
  has = false

  ary.each do |itm|
    count[itm] = ary.count(itm), has = true   if ary.count(itm) > 1
  end

  count.each  {|key,value| result.push(key) }
  has ? result : ary

end

# ------ Testing ------

# mode([1,2,3,3])         # => [3]
# mode([4.5, 0, 0])       # => [0]
# mode([1.5, -1, 1, 1.5]) # => [1.5]
# mode([1,1,2,2])         # => [1,2]
# mode([1,2,3])           # => [1,2,3], because all occur with equal frequency
# mode(["who", "what", "where", "who"]) # => "who"
