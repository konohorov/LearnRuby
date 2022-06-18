class Gadgets

  attr_accessor :name # getter and setter
  attr_writer :password # setter
  attr_reader :product_id # getter

  def initialize(name, password) # instance variables, with parameter
    @name = name
    @password = password
    @product_id = generate_number
  end

  def creds # instance method - override the ancestors methods if the same name
    "Users creds are: #{@name}, #{@password}"
  end

  def to_s
    "Gadget #{@id} belongs to #{@name}. It is made from #{self.class}, with internal ID #{self.object_id}"
  end

  private

  def generate_number
    start_digits = rand(1..99)
    end_digits = rand(100..199)
    letters = ("A".."Z").to_a
    middle_digits = "2020"
    3.times { middle_digits << letters.sample }
    "#{start_digits}_#{middle_digits}_#{end_digits}"
  end
end

phone = Gadgets.new("VasyaPupkin", "123pass")
p phone
p phone.instance_variables
p phone.creds
p phone.object_id
phone.name = "brand new phone"

p phone.generate_number