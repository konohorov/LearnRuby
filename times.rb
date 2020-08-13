require 'time'

Time.new(1985, 9, 14, 7, 30, 30) # uses when you need to store some specific (provided in the arguments) time in variable
Time.now # uses to specify current time

a = Time.now
a.year
a.month
a.day
a.hour
a.min
a.sec
p a.yday # day of the year
p a.mday
p a.wday # day of the week, from 0 to 6, where 0 - sunday
p a.ctime #readable format

p Time.parse("2020-04-24") # standart format
p Time.strptime("05-04-2020", "%m-%d-%Y")

birthday = Time.new(1985, 9, 14)
p birthday
p birthday.saturday?
p birthday + (60 * 60 * 24 * 365) # add 365 days forward
p birthday.to_s[0...10]

birthday.between?(Time.new(2010, 1, 1), Time.new(2020, 12, 31)) # between two day objects
