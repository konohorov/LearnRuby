# exercise with modules

module Curious
  def investigate(thing)
    puts "Looks at #{thing}"
  end
  def comments
    @comments ||= [] # @comments = @comments || []
  end
  def add_comment(comment)
    comments << comment
  end
end

module Clumsy
  def break(thing)
    puts "Knocks over #{thing}"
  end
end

class Monkey
  include Curious
  include Clumsy
end

bubbles = Monkey.new
bubbles.investigate('vase')
bubbles.break('Vase')
bubbles.add_comment("fuck you")
bubbles.comments