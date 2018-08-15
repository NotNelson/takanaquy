class Arena
    attr_accessor :name, :fighters

    def initialize(name)
        @name = name
        @fighters =[]
    end

    def fight(fighters)

    end

    def add_fighter(fighter)
        @fighters << fighter
    end

    def pick_a_fighter
        return @fighters.sample
    end

    def majeno_fights(fighter_type)
        return fighter_type == "Quuarawatanna" 
    end

    def quuarawatanna_fights(fighter_type)
        return fighter_type == "Langos"
    end

    def langos_fights(fighter_type)
        return fighter_type == "Majeno"
    end
end