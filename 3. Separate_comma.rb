# def separate_comma2(number)
# 	number = number.to_s.reverse()
# 	puts number.scan(/.{3}|./).join(",").reverse
# end

def separate_comma(number)
	number = number.to_s.reverse();
	counter = 0;
	answer = "";

	number.split('').each do |c| 
		answer += c;
		counter += 1;
		if counter % 3 == 0 && number.split('').length > counter
			answer += ",";
		end
	end
	puts answer.reverse()
end

separate_comma(1000)
separate_comma(1000000)
separate_comma(0)
separate_comma(100)
separate_comma(123456) 
