def get_grade(*grades)
	if  grades.all? {|grade| grade <= 100 && grade >= 0}
		grade = grades.reduce(:+) / grades.length;
		case  
			when grade <= 20
				puts "F";
			when grade <= 40
				puts "D";
			when grade <= 60
				puts "C";
			when grade <= 80
				puts "B";				
			else 
				puts "A";
		end
	else
		puts "Check your grades, there is a strange value";
	end
	end


get_grade(80,100,9)
get_grade(80,100,-9)