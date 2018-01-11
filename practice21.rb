def compare arg1
	a = trueVal(arg1)
	b = rand(1..5)
	puts val(b)
	if (a == b)
		puts "Tie"

	elsif ((a == 1 && b == 2) || (b == 1 && a == 2) || (a == 1 && b == 5) || (b == 1 && a == 5)) #rock v scissors, rock v lizard
		puts "rock wins!"

	elsif ((a == 2 && b == 3) || (b == 2 && a == 3) || (a == 2 && b == 5) || (b == 2 && a == 5)) #scissors v paper, scissors v spock
		puts "scissors wins!"

	elsif ((a == 3 && b == 1) || (b == 3 && a == 1) || (a == 3 && b == 4) || (b == 3 && a == 4)) #paper v rock, paper v spock
		puts "paper wins!"

	elsif ((a == 4 && b == 1) || (b == 4 && a == 1) || (a == 4 && b == 2) || (b == 4 && a == 2)) #spock v rock, spock v scissors
		puts "spock wins!"

	elsif ((a == 5 && b == 3) || (b == 5 && a == 3) || (a == 5 && b == 4) || (b == 5 && a == 4)) #lizard v paper, lizard v spock
		puts "lizard wins!"

	else
		puts "Tie never!"
	end			
end

def trueVal arg1
	case arg1
	when 'rock'
		1
	when 'scissors'
		2
	when 'paper'
		3
	when 'spock'
		4
	else
		5
	end
end

def val arg1
	case arg1
	when 1
		'rock'
	when 2
		'scissors'
	when 3
		'paper'
	when 4
		'spock'
	else
		'lizard'
	end
end
		
loop do
	puts "Rock, paper, scissors, spock, lizard? What is your guess? Hint: Anything else defaults to lizard."
	answer = gets.chomp
	compare answer.downcase
	puts "Type 'yes' to do it again."
	doit = gets.chomp
	break if (doit != "yes")
end