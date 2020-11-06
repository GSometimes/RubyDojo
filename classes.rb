class FIGHTER
    
    # @name = ''
    # @defense = 0
    # @strength = 0
    # @luck = 0
    # @life = 0
    
    attr_reader :name
    attr_accessor :defense, :strength, :luck, :life

    def initialize(name, defense, strength, luck, life)
        @name = name
        @defense = defense
        @strength = strength
        @luck = luck
        @life = life
    end

    def attack(opp)
        damage = @strength - opp.defense
        if damage <= 0
            puts "#{name} could not do damage to #{opp.name}"
        else
            opp.life = opp.life - damage
            puts "#{opp.name} took #{damage} now has #{opp.life} life left"
        end
    end
end

class DOJO
    def self.lift_weights(fighter)
        fighter.strength += 1
        puts "You are feeling your strength surge"
    end
end

