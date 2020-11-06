require "./classes.rb"


# ken = FIGHTER.new("Ken", 5,5,5,5)
# ryu = FIGHTER.new("Ryu", 7,7,7,7)

#test first fight
# puts ken.life
# ryu.attack(ken)
# puts ken.life

#test gains
# puts ryu.strength
# DOJO.lift_weights(ryu)
# puts ryu.strength

puts "Welcome to the game, what is your name?"
name = gets.chomp

Player = FIGHTER.new(name, rand(0..5), rand(0..5), 5, 10)
Akuma = FIGHTER.new("Akuma", 5, 5, 5, 10)

#EPIC backstory
puts "He lost his family when they were split up after a freak fire and was headed for a life of misery. Alone, he had to survive in a unkind world. But with his fighting skills and eagerness, he managed to battle the elements and crush all that's in the way. This has turned him into the man he is today. He now finds himself here...at the Salty Spitoon"

week = 1
while week <= 10
    puts "#{name}'s strength is: #{Player.strength}"
    puts "#{name}'s defense is: #{Player.defense}"
    puts "You're on week: #{week}"

    puts "Do you want to [l]ift_weights, do [e]ndurance_training, or put a [c]oin_in_fountain?"
    input = gets.chomp
    if input == "l"
        Player.strength += 1
        puts "You are feeling your strength surge"
    elsif input == "e"
        Player.defense += 1
        puts "You are feeling your defense surge"
    elsif input == "c"
        Player.strength += 1
        puts "You feel your luck has brought you strength"
    end
    week += 1
end
while true
    puts "Akuma's Life: #{Akuma.life} - #{Player.name}'s Life: #{Player.life}"

    Player.attack(Akuma)
    Akuma.attack(Player)

    if Player.life = 0
        puts "Akuma has won the battle!"
        break
    end

    if Akuma.life = 0
        puts "#{Player.name} has won the battle!"
        break
    end
end