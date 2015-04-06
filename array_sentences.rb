array1 = ["i", "want", "to", "go", "to", "the", "movies"] 

def sentence_maker (array)
  array.join(' ').capitalize << "."
end

puts sentence_maker(array1)
