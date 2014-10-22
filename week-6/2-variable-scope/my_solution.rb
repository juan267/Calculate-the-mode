# Release 0:
# Write your conclusions here.
# 1. Ruby warns me about the creation of a Global varibale and that i should be carefull with it as it has complete
#scope over my program
# 2. When i change the varibale of the constant ruby lets me do it but first it warns me that i had c¡just change a
# constant value and that by itself its suspicious to it.
# 3. Ruby warns me that by creatting a class variable on the top level of the program now all instances of Object
# That are all the objects in the program now have that variable set to them and this most be some kind of mistake,
# class variables never should be on the toplevel they should be inside a Class object.
# 4. As for the local varibale Ruby its teling me that that varibale is out of the scope of where im running the
# program so its unable to acces the variable and returns a NameError.


# Release 1

class GradeCalculator
  @@array_of_all_grades = []
  def initialize(array_of_grades)
    @grades = array_of_grades
    @number_of_grades = @grades.length
    @challenge_grade = 'A'
  end

  def sum
    @grades.inject{|mean, grade| mean + grade}
  end

  def mean
    sum / @number_of_grades
  end

  def calulate_grade
    case mean
      when 90..100
       "A"
      when 80..90
        "B"
      when 70..80
        "C"
      when 60..70
        "D"
      when 0..60
        "F"
      else
        "Error"
    end
  end

  def add_grades
    @@array_of_all_grades << calulate_grade
  end

  def return_global_array
    return @@array_of_all_grades
  end
end

grade = GradeCalculator.new([80,95,64,71,100,38,95,100])
grade2 = GradeCalculator.new([80,95,0,71,0,0,95,100])

p grade.calulate_grade
grade.add_grades
p grade2.calulate_grade
grade2.add_grades
p grade.return_global_array




# Release 3: Reflection

# This was also an easy but very valuable challenge that really lets yous gasp when to use each kind of variable
# , now i have clear that i have to use @@class varibales when i need  a variable that applies to all instance
# of a class or that store information about each instance of the class, instead i would use @instance variables
# to store information particular for each instance of a class so that and instace can not modified the same variable
# for another instance.