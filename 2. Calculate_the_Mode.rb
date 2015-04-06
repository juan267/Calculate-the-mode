def mode(items)
	count = Hash.new(0)
	items.each do |item|
		count[item] += 1
	end
	count = count.sort_by{|k, v| v}.reverse;
	value = count[0][1];
	max = [];
	item = 0;

	count.each do
		if value == count[item][1]
			max.push(count[item][0]);
		end	 
	 	item+=1 
	end
	print max.sort();
end

mode([1,2,3,3]) 
mode([4.5, 0, 0])
mode([1.5, -1, 1, 1.5])
mode([1,1,2,2])
mode([1,2,3])
mode(["who", "what", "where", "who"])