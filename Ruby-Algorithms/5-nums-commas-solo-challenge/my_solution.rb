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

#separate_comma(10000000)