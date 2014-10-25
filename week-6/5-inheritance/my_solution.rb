# U2.W6: Introduction to Inheritance

# I worked on this challenge [by myself, with: Devon Estes].


# 1. Pseudocode

#Globalcohort class
#Methods
 # Add_student
 # Remove_student
 # separate_students_to_local_cohorts
 # In_phase
 # graduated?
 # unit_cohort
# Attributes
  # students
  # p0_start_date
  # immersive_start_date
  # graduation_date
  # num_of_students
  # google_community
#LocalCohort
  # city
  # students
  # cohort_name
  # email_list
  # num_of_students

#Methods definition
#add_student: takes one argument (instance os Student class) from
  # adds that student to the all_students (Array)
#Remove_student : takes one argument (instance os Student class) from
  # removes that student from the all_students (Array)
#separate_students_to_local_cohorts: it will sort all_student(array)   #based on the city attribute
#In_phase: we will use Time.now and substract from it p0_start_date and use diference to know in which phase we are
#graduated: we will use Time.now and substract from it p0_start_date, and use diference to know in which phase we are. It will return a Boolean (true) if the date is greater than the actual graduation date otherwise it returns false
#unit_cohort : we will use Time.now and substract from it p0_start_date and use diference to know in which phase we are , adding and aditional level of substraction that will be the unit in each phase.





# 2. Initial Solution

# class GlobalCohort
#   require "date"
#   attr_reader :google_community

#     def initialize(p0_start_date, google_community, students=[])
#       @students = students
#       @p0_start_date = p0_start_date
#       @immersive_start_date = p0_start_date.next_day(63)
#       @graduation_date = @immersive_start_date.next_day(63)
#       @google_community = google_community
#     end

#     def num_of_students
#       @students.length
#     end

#     def add_student(student)
#       @students << student
#     end

#     def remove_student(student)
#       @students.delete(student)
#     end

#     def separate_students_to_local_cohorts
#       local_hash = Hash.new([])
#       @students.each do |student|
#       local_hash[student.location] = local_hash[student.location] << student
#       end
#       local_hash
#     end

#     def in_phase
#       if (Date.today - @p0_start_date) <= (63/1)
#         return "Phase 0"
#       elsif (Date.today - @p0_start_date) <= (84/1)
#         return "Phase 1"
#       elsif (Date.today - @p0_start_date) <=(105/1)
#         return "Phase 2"
#       else
#         "Phase 3"
#       end
#     end

#     def graduated
#       if (Date.today - @p0_start_date) >=(126/1)
#         true
#       else
#         false
#       end
#     end

#      def unit_cohort
#       if (Date.today - @p0_start_date) <= (63/1)
#         if (Date.today - @p0_start_date) <= (21/1)
#           return "unit 1"
#         elsif (Date.today - @p0_start_date) <= (42/1)
#           return "unit 2"
#         else
#           return "unit 3"
#         end
#        elsif (Date.today - @p0_start_date) <= (84/1)
#         return "Phase 1"
#        elsif (Date.today - @p0_start_date) <=(105/1)
#         return "Phase 2"
#        else
#         "Phase 3"
#       end
#     end

# end

# class LocalCohort < GlobalCohort
#   attr_reader :city, :cohort_name, :email_list
#   def initialize(city, cohort_name, email_list, students=[])
#     @city = city
#     @cohort_name = cohort_name
#     @email_list = email_list
#   end

#   def list_students
#     self.separate_students_to_local_cohorts

# end

# class Student
#   attr_reader :first_name, :last_name, :location

#   def initialize(first_name, last_name, location)
#   @first_name = first_name
#   @last_name = last_name
#   @location = location
#   end
# end


# 4. Refactored Solution

class GlobalCohort
  require "date"
  attr_reader :google_community, :p0_start_date, :date_diff

  def initialize(p0_start_date, google_community, students=[])
    @students = students
    @p0_start_date = p0_start_date
    @immersive_start_date = p0_start_date.next_day(63)
    @graduation_date = @immersive_start_date.next_day(63)
    @google_community = google_community
    @date_diff = Date.today - p0_start_date
  end

  def num_of_students
    @students.length
  end

  def add_student(student)
    @students << student
  end

  def remove_student(student)
    @students.delete(student)
  end

  def separate_students_to_local_cohorts
    local_hash = Hash.new([])
    @students.each do |student|
    local_hash[student.location] = local_hash[student.location] << student
  end
    local_hash
  end

def in_phase
    if @date_diff <= 63
      return "Phase 0"
    elsif @date_diff <= 84
      return "Phase 1"
    elsif @date_diff <=105
      return "Phase 2"
    elsif @date_diff <= 126
      "Phase 3"
    else
      "Graduated!"
    end
  end

  def graduated?
    if @date_diff <= 126
      return false
    else
      true
    end
  end

  def unit_calculator
    while in_phase == "Phase 0"
      if @date_diff <= 21
        return "Unit 1"
      elsif @date_diff <= 42
        return "Unit 2"
      else
        return "Unit 3"
      end
    end
  end

end

class LocalCohort < GlobalCohort

  attr_reader :city, :cohort_name, :students

  def initialize(city, cohort_name, global_cohort)
    @city = city
    @cohort_name = cohort_name
    @students = global_cohort.separate_students_to_local_cohorts[city]
    @date_diff = global_cohort.date_diff
  end

  def email_list
    @students.map { |student| student.email }
  end

  def num_of_students
    @students.length
  end

  def in_phase
    if @date_diff <= 63
      return "Phase 0"
    elsif @date_diff <= 84
      return "Phase 1"
    elsif @date_diff <= 105
      return "Phase 2"
    else
      "Phase 3"
    end
  end

  def graduated?
    if @date_diff <= 126
      false
    else
      true
    end
  end

  def unit_calculator
    while in_phase == "Phase 0"
      if @date_diff <= 21
        return "Unit 1"
      elsif @date_diff <= 42
        return "Unit 2"
      else
        return "Unit 3"
      end
    end
  end

end

class Student
  attr_reader :first_name, :last_name, :location, :email

  def initialize(first_name, last_name, location, email)
  @first_name = first_name
  @last_name = last_name
  @location = location
  @email = email
  end
end






# 3. DRIVER TESTS GO BELOW THIS LINE

juan = Student.new("Juan", "Gomez", "SF")
devon = Student.new("Devon", "Estes", "SF")

first_cohort = GlobalCohort.new(Date.new(2014,9,6),"https://plus.google.com/u/0/communities/101052050115460644487")
raccons = LocalCohort.new("SF","raccons", "sfraccons@gmail.com")

first_cohort.add_student(devon)
first_cohort.add_student(juan)
p first_cohort.num_of_students
p first_cohort.google_community
p first_cohort.separate_students_to_local_cohorts
p first_cohort.in_phase
p first_cohort.unit_cohort
p first_cohort.graduated




# 5. Reflection

# Althought this challenge was good the makes us understand how to use Inheritance i feel like the instructions
# where very vage so it leaves a lot of room to do whatever we want and dont know if the end result is
#   exactly what was ask for. The things that i learn the most by working with this challenge, was how
#   to use dates and make calcultaions with them.