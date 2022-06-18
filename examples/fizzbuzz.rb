def fizzbuzz(entry)
  puts entry.class
  if entry <= 0
    puts "Please, enter a number"
  else
    if entry % 15 == 0
      puts "fizzbuzz"
    elsif entry % 5 == 0
      puts "buzz"
    elsif entry % 3 == 0
      puts "fizz"
    else
      puts "invalid entry"
    end
  end
end

puts "Please enter your number:"
entry = gets.chomp.to_i

fizzbuzz(entry)