# U2.W4: Pad an Array
# This is a pairing challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Liorr Morrison.

# 0. Pseudocode

# What is the input? Array of integers
# What is the output? (i.e. What should the code return?) An updated array with the length specified, filled with either nil (default) or a value given by the user (an optional argument)
# What are the steps needed to solve the problem?
#For the pad method:
# => def pad that accepts two arguments (min_size=minimun lenght of the array and value=nil as default and anything if specified)
# => make a copy of self
# => return the copy if the min:size is less or equal to copy length
# => else push into copy the value argument until copy lenght equal min_size
# => return copy

# =>for the destructive pad! method is the same steps but without making the copy and working everything over self.



# 1. Initial Solution

class Array

  def pad (min_size, value = nil)
     copy = self.clone
    if copy.length >= min_size
      return copy
    else
      until copy.length == min_size
        copy.push(value)
      end
      copy
    end
  end

    def pad! (min_size, value = nil)
    if self.length >= min_size
      return self
    else
      until self.length == min_size
        self.push(value)
      end
      self
    end
  end

end




# 3. Refactored Solution

#I think we have a very nice and elegant solution so nothing to Refactored about it.





# 4. Reflection

# This was a very fun challenge to work on, i had never work with classes before but my pair did had
# experience with them so he teach me how self work inside the class method. once we had that work out,
# we quickly realized that maing changes on self will be the destructive method, so we needed to create a
# copy of self in order to do the non destructive pad method. After that thigs where very simple we, just
# had to check self length and return it if it was greater that the argument of pad, and if
# it was lower that the argument we push the value until length was equal to the argument
# and that was all.