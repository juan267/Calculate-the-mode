# U2.W4: Create Accountability Groups


# I worked on this challenge [by myself, with: ].

# 0. Pseudocode

# Input: String array
# Output:
# Steps:


# 1. Initial Solution

student_array = ["Aarthi Sarode",
"Alex Szabo",
"Alfred Calayag",
"Amir Beheshtaein",
"Anna Wu",
"Anthony Ng",
"Brandon Graham",
"Brittney Marie Hodson",
"CM Liotta",
"David Kim",
"Davide Curletti",
"Derek Tang",
"Devin Liu",
"Devon Estes",
"Enja Reyes",
"Forrest Venable",
"Gabrielle Chua",
"J.H. Kevin Xu",
"James Fallon",
"Jasmeet Chatrath",
"Jesse Germinario",
"Juan Gomez",
"Karen Lo",
"Kevin Maze",
"Kevin Xu",
"Lance Tipton",
"Leonard Bui",
"Leyla Movahedi",
"Liorr Morrison",
"Mack MacLean",
"Mark Pfeffer",
"Mark Reid",
"Michael Criste",
"Michelle Park",
"Paul Yu",
"Peter Brown",
"Peter Fitzpatrick",
"Philip Riley",
"Quynh Chen",
"Ram Ramakrishna",
"Richard McCluskey",
"Ryan Urie",
"Sean Marman",
"Stephen Brooks Clem",
"Steve Zimmerman",
"Thomaz Yazima",
"Tina White",
"Vincent Colavin",
"Sagar Singh",
"Sagar Singh",
"Sagar Singh"]

def accountability (input_array)
    unit_array=[]
    array_copy=input_array.dup
    n_groups=array_copy.count/4
    counter=1
    while n_groups >=counter
      array_copy.shuffle!
      members= array_copy.slice!(0..3)
      unit= "Group number #{counter}: #{members} "
      unit_array<<unit
      counter += 1
    end
    if array_copy.count == 1
      unit_l= "Group number #{counter}: #{array_copy}"
      unit_array<<unit_l
    else
      unit_s= "Group number #{counter}: #{array_copy}"
      unit_array<<unit_s
    end
    return unit_array
end

unit_1= accountability(student_array)
unit_2= accountability(student_array)
unit_3= accountability(student_array)

puts "Unit 1 Groups: "
puts unit_1
puts "Unit 2 Groups: "
puts unit_2
puts "Unit 3 Groups: "
puts unit_3


# 2. Refactored Solution

# The solution above its the refactor solution just that i erase it so many times that i forgot to keep my initial solution.






# 3. Reflection

#This one was really hard like, i felt like quitting many times and y frustarted me a little , i had to look several times to other cohorts code and try to meke sense out of them and come up with a solution of my own, but i not happy with the result i think its sloppy code and it dosent look elegant, besides i have to call the method 3 times to get the 3 unit set of groups. This challenge made me realice that i have to study a lot more regarding arrays and their methods. But the good side is that i learn so many new things, like the slice , dup and shuffle method and its pushing me to try harder.


