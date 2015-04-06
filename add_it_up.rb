def total(numbers)
	return 0 if numbers.length < 1
	result = 0
	numbers.each { |num| result += num }
	result
end

puts total ([-100, 100])