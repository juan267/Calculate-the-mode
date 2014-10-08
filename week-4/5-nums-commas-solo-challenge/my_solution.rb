# U2.W4: Numbers to Commas Solo Challenge

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.


# 0. Pseudocode

# What is the input? an integer
# What is the output? (i.e. What should the code return?): a String containing the integer separeted by commas
# What are the steps needed to solve the problem?
# => define a method
# => convert the integer to string
# => get the length of the string
# => find what happens when you divide the lenght in 3 and what is the remainder for diferent numbers
# => create a block inside each case of the remainder that insert the commas the number of times that it needs to starting from position -4 and adding -4 to each ne position




# # 1. Initial Solution

# def separate_comma (n)
#   n = n.to_s
#   pos = -4
#   n_lenght= n.length
#   sec = n_lenght/3
#   if (n_lenght%3 ==0)
#     times = sec -1
#     counter = 1
#     while counter <= times
#       n.insert(pos,",")
#       pos += -4
#       counter += 1
#     end
#   elsif (n_lenght%3 ==1)
#     counter = 0
#     while counter < sec
#       n.insert(pos,",")
#       pos += -4
#       counter += 1
#     end
#   elsif (n_lenght%3 ==2)
#     counter = 0
#     while counter < sec
#       n.insert(pos,",")
#       pos += -4
#       counter += 1
#     end
#   end
#   p n
# end








# 2. Refactored Solution

def separate_comma (n)
  n = n.to_s
  pos = -4
  n_lenght= n.length
  sec = n_lenght/3
  if (n_lenght%3 ==0)
    times = sec -1
    counter = 1
    while counter <= times
      n.insert(pos,",")
      pos += -4
      counter += 1
    end
  else
    counter = 0
    while counter < sec
      n.insert(pos,",")
      pos += -4
      counter += 1
    end
  end
  p n
end

p separate_comma(10000000000)


# 3. Reflection

# This was a fun challenging problem, i try to do it whit the least amount of methods as posible and i think i got a good but
# dificult to read solution. With this problem i learn that the amount of ways that you can solve a problem are almost infinite
# and that you can approach a challenge in every way that you want while it makes sense. It also force me to break the problem
# in small parts and solve one by one.