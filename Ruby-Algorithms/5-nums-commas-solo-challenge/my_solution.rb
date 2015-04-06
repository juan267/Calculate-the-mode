def separate_comma(number)
  number = number.to_s
  array = [] 
  number.reverse!
  while (number.length > 0) 
    array << number.slice!(0,3)
  end
  number = array.join(',')
  number.reverse!
end

p separate_comma(10000000)
p separate_comma(10)
p separate_comma(0)
p separate_comma(1789)