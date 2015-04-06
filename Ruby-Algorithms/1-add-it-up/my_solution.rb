def total(array)
  return array.reduce(:+)
end

puts "Number array solution:"

p total([1,2,3])      # => 6
p total([4.5, 0, -1]) # => 3.5
p total([-100, 100])  # => 0

def sentence_maker(array) 

end

puts "String array solution:"

def sentence_maker(array)
  sentence = ""
  array.each { |word| sentence = sentence + " " + word } 
  sentence.strip.capitalize + "."
end

p sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])