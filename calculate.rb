def mode(array)
	count = []
	output = []
	array.compact!
	unique = array.uniq
	u=0

	unique.each do |item|
		count[u] = array.count(item)
		u+=1
	end
	c=0
	count.each do |item|
		output[c] = unique[c] 
		if item == count.max
		c+=1
	end
	return output.compact.inspect
end

puts mode(["dog", "dog", "cat", "mouse", "yellow"])