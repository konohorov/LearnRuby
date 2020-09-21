# r - read
# a - append - if file exists, add data to the end
# w - write - if file exists, rewrite data

File.open("textfile.txt").each do |line|
  puts line
end # close file, the same as File.close

# File.open("new.txt", "w") do |file|
#   file.puts "first line"
#   file.write "secod line"
#   file.puts "still the same line"
# end

File.open("new.txt", "a") do |file|
  file.puts "add one more line"
end

File.readlines

# File.rename("old_name.txt", "new_name.txt")
#
# if File.exist?("filename.txt")
#   File.delete("filename.txt")
# end
