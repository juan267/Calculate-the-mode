class Array

  def pad(integer, *string)
    new_array = self.dup
    iterator = integer - new_array.length
    if new_array.length < integer
      if string.empty?
        iterator.times do
          new_array.push(nil)
        end
      else
        iterator.times do
          new_array.push(string.first)
        end
      end
    else
      new_array
    end 
    new_array
  end

  def pad!(integer, *string)
    iterator = integer - self.length
    if self.length < integer
      if string.empty?
        iterator.times do
          self.push(nil)
        end
      else
        iterator.times do
          self.push(string.first)
        end
      end
    else
      self
    end 
    self
  end
end

p [1,2,3].pad(5)
p [1,2,3].pad(5, 'apple')
p [1,2,3].pad(3)
static_array = [1,2,3]
p static_array.pad(5)
p static_array