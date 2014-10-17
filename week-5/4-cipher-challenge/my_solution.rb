# # U2.W4: Cipher Challenge


# # I worked on this challenge with: Liorr Morrison.



# # 1. Solution
# # Write your comments on what each thing is doing.
# # If you have difficulty, go into IRB and play with the methods.



# def north_korean_cipher(coded_message)
#   input = coded_message.downcase.split("")  # it takes coded_message and it lowercase all the letters and converts the string to an array of each individual letter and assign it to input variable.
#   decoded_sentence = []  # Creates an empty array.
#   cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
#             "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes?
#             "g" => "c",
#             "h" => "d",
#             "i" => "e",
#             "j" => "f",
#             "k" => "g",
#             "l" => "h",
#             "m" => "i",
#             "n" => "j",
#             "o" => "k",
#             "p" => "l",
#             "q" => "m",
#             "r" => "n",
#             "s" => "o",
#             "t" => "p",
#             "u" => "q",
#             "v" => "r",
#             "w" => "s",
#             "x" => "t",
#             "y" => "u",
#             "z" => "v",
#             "a" => "w",
#             "b" => "x",
#             "c" => "y",
#             "d" => "z"}

#   input.each do |x| # each is iterating each letter of the input array,
#     found_match = false  # Assigning found_match to false as the default value allows us to change it to true only after we have found a match.It serves as a check at the end of the function; if no matches found by line 62 then it would just put the input array back into string form.
#     cipher.each_key do |y| # Its iterating through the cipher hashes keys
#       if x == y  # What is this comparing? it is comparing the input letters of the code with the keys of the hash and checking if they are equal. Its getting X from the input array and Y from the cipher hash keys. The X represents the letters of the hidden message and the Y the decoded corresponding letters.   Where is it getting x? Where is it getting y? What are those variables really?
#         puts "I am comparing x and y. X is #{x} and Y is #{y}."
#         decoded_sentence << cipher[y]
#         found_match = true
#         break  # Why is it breaking here? Because the code has been completly deciphered and at this point and
#       elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing? Its checking for special characters. If the program can not find a match for X in line 46 it would then check if X matches any of the above characters.
#         decoded_sentence << " "
#         found_match = true
#         break
#       elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a " Its converting natural numbers to an array of numbers 0 to 9. And then its checking if X is any of those numbers.
#         decoded_sentence << x
#         found_match = true
#         break
#       end
#     end
#     if not found_match  # What is this looking for? If not match is found for X it would just put X in its original coded state into the the decoded sentance.
#       decoded_sentence << x
#     end
#   end
#   decoded_sentence = decoded_sentence.join("") # It converts the array into a string

#   if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help.
#     decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
#   end
#   return decoded_sentence # Its returning a string that is decoded version of the coded message
# end

# # Your Refactored Solution

class Decipher

  def initialize(coded_message)
    @coded_message = coded_message
  end


  def decipher(shift)
    decoded_message = []
    special_characters = ["@", "#", "$", "%", "^", "&", "*"]
    code_letters = @coded_message.downcase.split("")
    alphabet = %w(a b c d e f g h i j k l m n o p q r s t u v w x y z)
    code_letters.each do |letter|
      if alphabet.include?(letter)
        decoded_message << alphabet[(alphabet.index(letter)) - shift]
      elsif special_characters.include?(letter)
        decoded_message << " "
      elsif (0..9).to_a.map { |element| element.to_s }.include?(letter)
        decoded_message << letter
      else
        decoded_message << letter
      end
     # if decoded_message.match(/\d+/)
     # decoded_message.gsub!(/\d+/) { |num| num.to_i / 100 }
     #  end
    end
    return decoded_message.join("")
  end

end



# # Driver Test Code:

p test = Decipher.new("m^aerx%e&gsoi!")
p test.decipher(4) == "i want a coke!"


p test = Decipher.new("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p test.decipher(4) == "our people eat the most delicious and nutritious foods from our 1000000 profitable farms."
p test = Decipher.new("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p test.decipher(4) == "our nukes are held together by grape-flavored toffee. don't tell the us!"
p test = Decipher.new("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p test.decipher(4) == "if you make one mistake, gen. ri yong-gil, you will be replaced by dennis rodman."
p test = Decipher.new("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p test.decipher(4) == "next stop: south korea, then japan, then the world!"
p test = Decipher.new("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")
p test.decipher(4) == "can somebody just get me 10000 bags of cool ranch doritos?"


# # Reflection:

# Most dificult challenge so far, it definetely was useful to work in pairs to solve it. I think we really managed to do
# an automated and simple solution that is a lot more readable and elegant than the initial solution. This was all
# about logic and not finding new methods, so it was a good mind excersice. I lik how the initial code was very
# dificult to read but ours its simple and readable.
