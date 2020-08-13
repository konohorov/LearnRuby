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
                       # add & sign (proc), convert method mane to sighn with :

