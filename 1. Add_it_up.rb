def total(array)
	puts array.reduce(:+)
end

total([1,2,3])      
total([4.5, 0, -1])
total([-100, 100]) 

def sentence_maker(array)
	array[0] = array[0].capitalize
	puts array.inject {|sum, n| sum +" " + n }
end

sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])

