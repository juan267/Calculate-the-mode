# U2.W5: The Bakery Challenge (GPS 2.1)

# Your Names
# 1) Juan Gomez
# 2)

#You should not change this file. Please paste your solution into the my_solution.rb file.

def bakery_num(num_of_people, fav_food)
  # What is this list?
  # - Is it the amount of pies, etc that the bakery already has?
  # - Maybe we have to figure out how many MORE we need to make?

  # - Is this the number of people who ordered each dish?

  # We had 24 people.
  # OK, we knew that 24 ppl needed 4 cakes.
  # That means 4 cakes cut into slice would serve 24 ppl.
  # That means each cake could have to be 24 / 4 = 6 slices per cake.

  # This list is the number of people 1 of each dish will serve.
  # my_list = {"pie" => 8, "cake" => 6, "cookie" => 1}
  servings_per_dish = {"pie" => 8, "cake" => 6, "cookie" => 1}


  # Its starting each dish variable as 0 so we can modify it later to the actual amount require
  pie_qty = 0
  cake_qty = 0
  cookie_qty = 0

  # Its starting the variable has_fave to equal false until it can be modified to true
  has_fave = false

  # Its checking that the bakery can cook the person favorite food, my_list to check if one of its Keys equals to the parameter past in(fav_food) if thats true it changes
  # has_fave to TRUE and sets fav_food to the key value of my_list
  servings_per_dish.each_key do |k|
      if k == fav_food
          has_fave = true
          fav_food = k
      end
  end
  # If the bakery cannot make their favorite food, Its telling the costumer that they can not prepared that dish for them.
  if has_fave == false
    raise ArgumentError.new("You can't make that food")
  else # If the baker CAN make their favorite food...

    # We know above that the list contains a food, and the servings per that food
    # hash[food] = servings
    # If the bakery can make their fav_food, find out how many servings that food has
    # Ex: So if their fav_food was "pie" it sets fav_food_qty = list["pie"]
    # => 8

    # fav_food_qty = servings_per_dish.values_at(fav_food)[0]
    # So without even knowing what values_at method does...
    # Because we see that [0], we can assume that values_at is returning an array
    # array[index] = element

    # This method is trying to return the values at the key (fav_food) in my hash, and its returning as an array.
    # We know the value is only one element, so we are returning a single element array.

    # fav_food = "pie"
    # servings_per_dish.values_at(pie)[0]
    # ["8"][0]
    # => 8

    # A hash is the same thing as an array, it just replaces index numbers, with keys.

    # Just like...
    # array[index] => value
    # hash[key] => value

    fav_food_qty = servings_per_dish[fav_food]


    if num_of_people % fav_food_qty == 0
      # / checks if it is divisible
      # % checks if dividng would leave a remainder.
      # So its checking if our fav_food can serve everyone without leaving a remainder.
      # aka we dont need to make any cookies.

      # So this is essentially checking if our fav_food can serve everyone at the party.

    # If condition do everything indented here
        num_of_food = num_of_people / fav_food_qty

        # So message only runs when this condition is true.
        return "You need to make #{num_of_food} #{fav_food}(s)."

    else num_of_people % fav_food_qty != 0 # If fav_food CANNOT serve everyone without leaving a remainder.
       # Its calculating the amount of each dish that we have to make so that at the end of the party there is no remainder
        while num_of_people > 0
            if num_of_people / servings_per_dish["pie"] > 0
                pie_qty = num_of_people / servings_per_dish["pie"]
                num_of_people = num_of_people % servings_per_dish["pie"]
            elsif num_of_people / servings_per_dish["cake"] > 0
                cake_qty = num_of_people / servings_per_dish["cake"]
                num_of_people = num_of_people % servings_per_dish["cake"]
            else
                cookie_qty = num_of_people
                num_of_people = 0
            end
        end
        return "You need to make #{pie_qty} pie(s), #{cake_qty} cake(s), and #{cookie_qty} cookie(s)."
    end
  end
end


#-----------------------------------------------------------------------------------------------------
#DRIVER TEST CODE-- DO NOT MODIFY ANYTHING BELOW THIS LINE (except in the section at the bottom)
# These are the tests to ensure it's working.
# These should all print true if the method is working properly.
p bakery_num(24, "cake") == "You need to make 4 cake(s)."
p bakery_num(41, "pie") == "You need to make 5 pie(s), 0 cake(s), and 1 cookie(s)."
p bakery_num(24, "cookie") == "You need to make 24 cookie(s)."
p bakery_num(4, "pie") == "You need to make 0 pie(s), 0 cake(s), and 4 cookie(s)."
p bakery_num(130, "pie") == "You need to make 16 pie(s), 0 cake(s), and 2 cookie(s)."
# p bakery_num(3, "apples") # this will raise an ArgumentError

# You SHOULD change this driver test code. Why? Because it doesn't make sense.
p bakery_num(41, "cake") == "You need to make 0 pie(s), 5 cake(s), and 1 cookie(s)." # WHAAAAAT? I thought I said I wanted cake!


Reflection:

# Although it was dissapointed to not work with another cohort on this GPS, it was actually great working with Michael
# how trully let understand how an efective paring session works and what exactly does a driver and navegator roles
# do. A lot of thigs are now much clearer in mind tanks to working with him and getting knowledge from his expertice.
# Regarding the challenge , i definetely understood how hard can it be to uderstand somebody else code if it is not
# well written and the frustation that it can make you feel. This made me realized the importance of code readability
# and how good variable names can make a difference.
