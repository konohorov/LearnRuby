def find_day_of_the_year(number)
  entered_date = Time.new(2020, 1, 1) + (60 * 60 * 24 * number)
  # formatted_date = entered_date.to_s[0..9].split("-").reverse
  formatted_date = entered_date.strftime("%d %b %Y")

  if entered_date.monday?
    puts "Your date is #{formatted_date}, and it is monday"
  elsif entered_date.tuesday?
    puts "Your date is #{formatted_date}, and it is tuesday"
  elsif entered_date.wednesday?
    puts "Your date is #{formatted_date}, and it is wednesday"
  elsif entered_date.thursday?
    puts "Your date is #{formatted_date}, and it is thursday"
  elsif entered_date.friday?
    puts "Your date is #{formatted_date}, and it is friday"
  elsif entered_date.saturday?
    puts "Your date is #{formatted_date}, and it is saturday"
  elsif entered_date.sunday?
    puts "Your date is #{formatted_date}, and it is sunday"
  end
end

def users_entry
  number = 0
  puts "Please enter the number between 1 and 366: "
  until number >= 1 && number <= 366
    number = gets.chomp.to_i
    puts "Invalid entry, please try again: " if number <= 1 || number >= 366
  end
  puts "Thank you :)"
  number
end

find_day_of_the_year(users_entry)