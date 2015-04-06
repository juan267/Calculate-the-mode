def separate_comma(number)
	a = number.to_s.split('')
	b = a.size/3.0
	if a.size < 4
		return number.to_s
	elsif a.size%3 == 0
		n = -4
		(b.to_i-1).times do |item|
			a.insert(n, ',')
			n -= 4
		end
		return a.join("")
	else
		n = -4
		b.to_i.times do |i|
			a.insert(n, ',')
			n -= 4
		end
		return a.join("")
	end
end

puts separate_comma(100000000)