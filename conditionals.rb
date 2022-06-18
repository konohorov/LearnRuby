# case, if, unless (statement is false - reverse for if), while (statement is true), until (statement is false, reverse for while)

def rate(score) # case -> when -> then -> else
  case score
  when 0..15 # range from 0 to 15 including
    "great"
  when 16..25 then "good" # when/then view - single line
  when 26..50
    "bad"
  when 65, 66
    "nice job"
  when 67...69 # range fom 67 to 68 including, 69 excluded
    "exclude me"
  else
    "invalid number"
  end
end

p rate(0)
p rate(17)
p rate(50)
p rate(66)
p rate(68)
p rate(75)

p "output" unless false

# while i < 10 == until i > 9

score = 150
puts 'High rate' if score > 100 # inline condition - for IF and UNLESS

y = nil
p y
y ||= 5 # conditional assignment, if object is nil
p y
p '----------------------------------------------------'

i = 1
j = [1, 2, 3].reject { |el| el == i }.sample
p j

def player_general_stats(player_slug, period = '3 m', map = nil, side = nil)
  begin_at = period
  game_map = " AND g.map_name LIKE '%#{map}%'"
  game_side = " AND grsp.team_side = '#{side}'"
  stats_queries = {
    kills: "SELECT * WHERE p.slug = '#{player_slug}' AND g.begin_at >= '#{begin_at}'",
    damage: "SELECT * WHERE p.slug = '#{player_slug}' AND g.begin_at >= '#{begin_at}') AS damage_per_shot"
  }

  if !map.nil? && !side.nil?
    stats_queries.each do |name, query|
      name != :damage ? query.concat(game_map).concat(game_side) : query.insert(-21, game_map).insert(-21, game_side)
    end
  elsif !map.nil?
    stats_queries.each { |name, query| name != :damage ? query.concat(game_map) : query.insert(-21, game_map) }
  elsif !side.nil?
    stats_queries.each { |name, query| name != :damage ? query.concat(game_side) : query.insert(-21, game_side) }
  else
    stats_queries
  end
end

p player_general_stats('player', '2020', 'map', 'side')[:damage]
