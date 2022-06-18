class Planets
  attr_accessor :name, :team
end

default_player = Planets.new
default_player.team = 'Natus Vincere'

players = Hash.new do |hash, key|
  player = Planets.new
  player.team = 'Natus Vincere'
  hash[key] = player
end

players['s1mple'].name = 's1mple'
players['apEX'].name = 'apEX'
players['apEX'].team = 'Vitality'

p players['apEX']
p players['s1mple']