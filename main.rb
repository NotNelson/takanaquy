require "colorize"

require_relative "fighter_type"
require_relative "fighter"
require_relative "arena"

def pick_a_fighter(fighters)
    return fighters.sample
end

def fight(fighter_1, fighter_2, arena)
    type_1 = fighter_1.type
    type_2 = fighter_2.type

    if type_1 == type_2
        "Same type fighters, no contest"
    elsif type_1 == "Majeno"
        arena.majeno_fights(type_2) ? fighter_1.name[0] + " Wins!" : fighter_2.name[0] + " Wins!"
    elsif type_1 == "Quuarawatanna"
        arena.quuarawatanna_fights(type_2) ? fighter_1.name[0] + " Wins!" : fighter_2.name[0] + " Wins!"
    elsif type_1 == "Langos"
        arena.langos_fights(type_2) ? fighter_1.name[0] + " Wins!" : fighter_2.name[0] + " Wins!"
    end
end

arena = Arena.new("ARENA 1")

fighter_types = [
    "Majeno",
    "Quuarawatanna",
    "Langos"
]

fighter_types.each do |type|
    new_fighter_type = Fighter_type.new(type)
end 

fighters = [
    ["Cooper"],
    ["Carlos"],
    ["Saori"],
    ["Granger"],
    ["Nelson", ],
    ["Gallo", ]
]

fighters.each do |fighter|
    new_fighter = Fighter.new(fighter, fighter_types.sample)
    arena.add_fighter(new_fighter)
end

fighter_1 = arena.pick_a_fighter
fighter_2 = arena.pick_a_fighter

while fighter_1 == fighter_2
    fighter_2 = arena.pick_a_fighter
end

puts "Fighter 1 is: ".yellow + fighter_1.name[0].to_s + " type: ".yellow + fighter_1.type
puts "Fighter 2 is: ".yellow + fighter_2.name[0].to_s + " type: ".yellow + fighter_2.type

puts "\nOutcome of the fight is: ".yellow

puts fight(fighter_1, fighter_2, arena).red
