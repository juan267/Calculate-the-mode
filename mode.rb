def mode(array)
	freq = array.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
	max = freq.values.max
	key_pair = Hash[freq.select { |k, v| v == max}]
	key = key_pair.keys
end

puts mode([1,1,2,2])  