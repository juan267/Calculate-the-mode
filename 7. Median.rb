def median(items)
	size = items.length;
	items = items.sort;
	if size.even?
		if items.all? {|item| item.is_a? Fixnum }
			puts median = (items[(size)/2-2] + items[(size)/2-1])/2.to_f;
		else
			puts median = (items[(size)/2-2] +" and " + items[(size)/2-1]);	
		end
	else
		puts median = items[(size+1)/2-1];
	end
end

median([1,2,3,4,9])      # => 2
median([4.5, 0, -1]) # => 0
median([-100, 100])  # => 0.0
median(["apple","cherry","banana"])      # => "banana"
median(["apple","cherry","banana","mango"])      # => "banana"


print [2,43,].all? {|item| item.is_a? Fixnum }

