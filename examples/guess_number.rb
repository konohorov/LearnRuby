puts "Let's start, player. Enter your name: "
input = gets
name = input.chomp
puts "Hello #{name}! Please enter your number: "

number = rand(1..20)
puts number
number_of_guesses = 0
is_guessed = false

until number_of_guesses == 5 || is_guessed
	 guess = gets.to_i
	 number_of_guesses += 1

	 if guess < number
 		 print "Your number is low, try again\n"
 	elsif guess > number
 		 print "Your number is high, try again\n"
 	else
 		 print "Congratlations, #{name}, you win in #{number_of_guesses} guesses"
 		 is_guessed = true
 	end
end

unless is_guessed
	 print "Sorry Mario, the princess is in another castle"
end
