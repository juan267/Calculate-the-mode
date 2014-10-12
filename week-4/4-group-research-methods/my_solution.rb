# U2.W4: Research Methods

i_want_pets = ["I", "want", 3, "pets", "but", "only", "have", 2]
my_family_pets_ages = {"Evi" => 6, "Hoobie" => 3, "George" => 12, "Bogart" => 4, "Poly" => 4,
            "Annabelle" => 0, "Ditto" => 3}

# Person 1's solution
def my_array_finding_method(source, thing_to_find)
  # Your code here!
  source.select{|word| word.to_s.include?(thing_to_find)}
end

def my_hash_finding_method(source, thing_to_find)
  found = []
  source.each{|k,v| found << k if v == thing_to_find}
  found
end

# Identify and describe the ruby method you implemented.
# For my_array_finding_method, I invoked the .select method on the input array to return only those items in the array that the block code evaluated to be true.  In the block code, I used the .include? method to determine if the item in question includes the 'thing_to_find'.  I also applied the .to_s method to the 'word' in case the item was a non-string (which is what I initially anticipated).
# For the my_hash_finding_method, the input is a hash, but the desired output was an array.  I approached this by first creating a blank array 'found'.  I then applied the .each method to the input hash to iterate over each key/value pair.  In the block code, I added the key to the 'found' array only if the value was equal to that we were looking for ('thing_to_find').  The last line (16) returns the array of items we collected.
#

# Person 2
def my_array_modification_method(source, thing_to_modify)
  source.map! { |each| if each.is_a? Fixnum then each + 1 else each end }
end

def my_hash_modification_method(source, thing_to_modify)
  output = source.each {|k,v| source[k] = v + thing_to_modify }
end

# Identify and describe the ruby method you implemented.
# For my_array_modification_method I used enumerable#map! to update our array so it adds thing_to_modify to any Fixnum in the array, and then does nothing for any other objects in the array.
#
# For my_hash_modification_method I used hash#each to iterate over the key-value pairs in the hash and add thing_to_modify to each value.

# Person 3
def my_array_sorting_method(source)
  source.map {|word| word.to_s}.sort
end

def my_hash_sorting_method(source)
  source.sort_by {|name, age| [age, name]}
end



# Identify and describe the ruby method you implemented.
#For my_array_sorting_method i used map first to transform all the elements inside the source Array
#into strings, and then i call sort on it so that it sort the array based on alphabetical order.
#
#for my_hash_sorting_method i used sort_by (enumerable method). This enumerable method creates two
#arrays one that contains the names and the other that contains the ages, by having this two arrays is
#now posible to sort them as we can now do a<=>b comparison between the elements inside the arrays.
#So then im telling it to sort source first by the age that has the highest priority
#and then im telling it to sort by the name so that if two elements have the same age it sort them based on the name.


# Person 4
def my_array_deletion_method(source, thing_to_delete)
  source.delete_if {|x| x.to_s.include? (thing_to_delete)}
end

def my_hash_deletion_method(source, thing_to_delete)
  source.delete_if {|x| x.include? (thing_to_delete)}
end

# Identify and describe the ruby method you implemented.
# For my_array_deletion_method:
# .delete_if (http://www.ruby-doc.org/core-2.0/Array.html#method-i-delete_if)
#   .delete_if, deletes every element where the block is true.
#   Since source contains numbers, the item had to become a string or face Fixnum error.
# .include? (OBJECT) (http://www.ruby-doc.org/core-2.0/Array.html#method-i-include-3F)
#   .include? results in either true or false where (element == object), thus if thing_to_delete is inside the source, it is deleted from self.
#
# For my_hash_deletion_method:
# .delete_if (http://www.ruby-doc.org/core-2.0/Hash.html#method-i-delete_if)
#   .delete_if, deletes every key-value pair from the hash when the block is true.
#
# .include? (KEY) (http://www.ruby-doc.org/core-2.0/Hash.html#method-i-include-3F)
#   .include? returns true if the key is present in HASH, thus if thing_to_delete is inside the source(key), it is deleted from self.


################## DRIVER TEST CODE ###################################s
# HINT: Use `p` statements to see if you are altering the original structure with these methods.
# Each of these should return `true` if they are implemented properly AND you have the code for each of the methods.

# Person 1
p my_array_finding_method(i_want_pets, "t") == ["want","pets","but"]
p my_hash_finding_method(my_family_pets_ages, 3) == ["Hoobie", "Ditto"]

# Person 2
p my_array_modification_method(i_want_pets, 1) == ["I", "want", 4, "pets", "but", "only", "have", 3 ]
p my_hash_modification_method(my_family_pets_ages, 2) == {"Evi" => 8, "Hoobie" => 5, "George" => 14, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}

# Person 3
# This driver code will only pass if you have the code from Person 2! If you don't have it, copy/modify it so you can
# test whether your method works.

# The numbers were converted to strings because of the method I used when I made this.
# You don't have to do this in the exact same way, just make sure to write your own
# test if you are going to do it differently and give that to your group.

p my_array_sorting_method(i_want_pets) == ["3", "4", "I", "but", "have", "only", "pets", "want"]
p my_hash_sorting_method(my_family_pets_ages) == [["Annabelle", 2], ["Ditto", 5], ["Hoobie", 5], ["Bogart", 6], ["Poly", 6], ["Evi", 8], ["George", 14]]

# Person 4
# This driver code will only pass if you have the code from Person 2!If you don't have it, copy/modify it so you can
# test whether your method works.
# This may be false depending on how your method deals with ordering the animals with the same ages.
p my_array_deletion_method(i_want_pets, "a") == ["I", 4, "pets", "but", "only", 3 ]
p my_hash_deletion_method(my_family_pets_ages, "George") == {"Evi" => 8, "Hoobie" => 5, "Bogart" => 6, "Poly" => 6, "Annabelle" => 2, "Ditto" => 5}



# Release 1: Identify and describe the ruby method you implemented. Teach your
# accountability group how to use the methods.
#
#
#


# Release 4: Reflect!
# What did you learn about researching and explaining your research to others?
# I learn how other tought procees wrk and how they see things
#diferent form me. I also learn that explaining something really
#lets you understand the gaps in your own knoewledge so that
# you can work on those gaps an further improve what you know.