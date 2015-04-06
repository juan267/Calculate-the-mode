def sum_array (array)
    Integer total = 0
    array.each do |element|
        total += element
    end
    return total
end

sum_array([1,2,3,4,5])

def sentence_maker (array)
  array.join(" ")
end

sentence_maker(["i", "want", "to", "go", "to", "the", "movies"])
end