class Array
	def pad(number, option = nil)
		new_array = self.clone
		while new_array.length < number
			new_array.push(option) 
		end
		return new_array
	end

	def pad!(number, option = nil)
		while self.length < number
			self << option 
		end
		return self
	end
end

array = [1,2,3]
p array.pad(5)
p array