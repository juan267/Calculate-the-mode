# Function to Add all the elements in an Array

def total(array)
	array.reduce(:+) 	
end

def sentence_maker(array)
	array.first.replace(array.first.capitalize)
	array << "."
	array.join(" ")
end


puts total([1,2,3])
puts sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])