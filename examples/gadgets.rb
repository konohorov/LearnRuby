class Gadgets

  attr_accessor :name # getter and setter
  attr_writer :password # setter
  attr_reader :user_id # getter

  def initialize(name) # instance variables, with parameter
    @name = name
    @password = "pass-#{rand(1..10)}-#{('a'..'z').to_a.sample}"
    @user_id = rand(1..1000)
  end

  def creds # instance method - override the ancestors methods if the same name
    "Users creds are: #{@name}, #{@password}"
  end

  def self_example # self refers to the class object
    "Here it is: object class is - #{self.class}, and memoryId is - #{self.object_id}"
  end
end

phone = Gadgets.new("VasyaPupkin")
p phone
p phone.instance_variables
p phone.creds
p phone.object_id
puts phone.self_example
phone.name = "brand new phone"