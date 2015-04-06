class Array
	def pad(number, string = nil)
			array_pad = self;
		if number > self.length		
			(number-self.length).times do |text|
				array_pad.push(string);		
			end
		end
		print array_pad;	
	end

	def pad!(number, string = nil)
		if number > self.length		
			(number-self.length).times do |text|
				self.push(string);		
			end
		end
		print self;
	end
end

[1,2,3].pad(5)
[1,2,3].pad(5, 'apple')
[1,2,3].pad(4, 'orange')
[1,2,3].pad(0)

[1,2,3].pad!(5)
[1,2,3].pad!(5, 'apple')
[1,2,3].pad!(4, 'orange')
[1,2,3].pad!(0)


