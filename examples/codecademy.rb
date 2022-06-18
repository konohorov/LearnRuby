=begin
movies = {
    m1: 5,
    m2: 3,
    m3: 1
}
puts "Enter command (add / update / display / delete): "
choice = gets.chomp

case choice
  when 'add'
    puts 'Enter title: '
    title = gets.chomp.to_sym

    puts 'Enter rating: '
    rating = gets.chomp.to_i

    if movies[title] == nil
      movies[title] = rating
    end

    puts "Added movie with title #{:title} and with rating #{rating}"

  when 'update'
    puts 'Enter title: '
    title = gets.chomp.to_sym

    if movies[title] == nil
      puts 'Movie not found'
    else
      puts 'Enter rating: '
      rating = gets.chomp.to_i
      movies[title] = rating
    end

  when 'display'
    movies.each { |k, v| puts "#{k}: #{v}" }
  when 'delete'
    puts 'Enter title: '
    title = gets.chomp.to_sym

    if movies[title] == nil
      puts 'Movie not found'
    else
      movies.delete(title)
    end
  else
    puts 'Wrong command!'
end
=end

puts "What's your favorite language?"
language = gets.chomp

case language
  when "Ruby"
    puts "Ruby is great for web apps!"
  when "Python"
    puts "Python is great for science."
  when "JavaScript"
    puts "JavaScript makes websites awesome."
  when "HTML"
    puts "HTML is what websites are made of!"
  when "CSS"
    puts "CSS makes websites pretty."
  else
    puts "I don't know that language!"
end
