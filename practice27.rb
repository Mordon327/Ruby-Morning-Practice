continue = 0
loop do
	puts "Say something to Bob the angry teenager."
	cont = 1
	answer = nil

	loop do
		answer = gets.chomp
		if  (answer[answer.length - 1] == "?") || (/[a-zA-Z]/.match(answer)) || (answer == nil) || (/\D/.match(answer) == nil)
			cont = 1
		else
			puts "You need words to speak."
			cont = 0
		end
		break if cont != 0
	end

	if answer === answer.downcase
		if answer[answer.length - 1] == "?"
			puts "Sure."
			continue = 1
		else
			puts "Whatever"
		end
	elsif answer === answer.upcase
		puts "Whoa, Chill Out!"
	elsif answer === nil
		puts "Fine. be that way."
		continue = 1
	else
		puts "Whatever."
	end
	break if continue != 0
end