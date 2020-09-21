class Boat
  def initialize(name)
    @name = name
  end
end

class PowerBoat < Boat
  def initialize(name, motor_type)
    super(name)
    @motor_type = motor_type
  end

  def info
    puts "Name: #{@name}"
    puts "Motor Type: #{@motor_type}"
  end
end

boat = PowerBoat.new("Guppy", "outboard")
boat.info

puts "-----------------------------------------"

def make_casserole
  puts "Preheat oven to 375 degrees"
  ingredients = yield
  puts "Place #{ingredients} in dish"
  puts "Bake for 20 minutes"
end

make_casserole do
  "noodles, celery, adn tuna"
end

make_casserole do
  "rice, broccoli, and chicken"
end

puts "-----------------------------------------"

def volume(options)
  result = options[:width] * options[:height] * options[:depth]
  puts "Volume is #{result}"
end

volume(width: 10, height: 5, depth: 2.5)