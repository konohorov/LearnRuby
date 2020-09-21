# proc and lambda - is a block, to substitute a method block
# can be passed as an argument to the method without parameters


to_euros = Proc.new { |currency| currency * 0.95 }
to_hryvnya = lambda { |currency| currency * 26.95 }


currencies = [10, 20, 30, 40, 50]

p currencies.map(&to_euros)
p currencies.map(&to_hryvnya)

to_euros.call(25) # runs the proc
to_hryvnya.call(25) # runs the lambda

currencies.map(&:to_s) # converts number array to string array
                       # add & sign (proc), convert method mane to sign with :

def my_method(&my_block)
  puts "First"
  my_block.call("2nd")
  yield("one more time 2nd")
  puts "Third"
end

my_method do |param|
  puts "Second #{param}"
end


# Here at the amusement park, you have to be four feet tall
# or taller to ride the roller coaster. Let's use .select on
# each group to get only the ones four feet tall or taller.

group_1 = [4.1, 5.5, 3.2, 3.3, 6.1, 3.9, 4.7]
group_2 = [7.0, 3.8, 6.2, 6.1, 4.4, 4.9, 3.0]
group_3 = [5.5, 5.1, 3.9, 4.3, 4.9, 3.2, 3.2]

# Complete this as a new Proc
over_4_feet = Proc.new { |height| height >= 4 }

    # Change these three so that they use your new over_4_feet Proc
    can_ride_1 = group_1.select(&over_4_feet)
    can_ride_2 = group_2.select(&over_4_feet)
    can_ride_3 = group_3.select(&over_4_feet)

puts can_ride_1
puts can_ride_2
puts can_ride_3

def greeter
  yield
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)