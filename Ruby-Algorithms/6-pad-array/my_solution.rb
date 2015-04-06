class Array
  def pad!(i, value=nil)
    (i - length).times { self << value }
    self
  end
  def pad(i, value=nil)
    arr = self
    (i - length).times { arr << value }
    arr
  end
end

array = [1,2,3]
p array.pad(5)
p array 