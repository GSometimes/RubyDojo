# Dojo Fighter

##### By Alex Merced

![Ken & Ryu Battling Akuma](https://pm1.narvii.com/7071/2f1fb115fece57861eaadf639a7baa28e44d9f9fr1-1024-682v2_uhq.jpg)

## Goal of Exercises

- Practice Creating Classes and Instantiating Objects
- Having Objects Interact with Each Other

## Game Synopsis

You are training at the Local Dojo for a big battle 10 weeks from now (10 turns). Each week you'll make a decision on how to train and after 10 weeks you will have a battle with your opponent.

### The Game Takes Input

Remember to get input from the game player use the gets function like below!

```ruby
puts "Do you want to |fight| or |run|?"
input = gets.chomp #chomp trims whitespace

if input == "fight"
    puts "you are fighting"
elsif input == "run"
    puts "you are running"
end
```

## Step 1 - Create Our Set Pieces

When creating any application we should first define our classes that we will be using. Create two classes that match the following psuedo code.

### Fighter Class

_getters are a method to get a value, and setters are methods to alter a value_

instance properties defined by initialize function

- name => string : has getter no setter
- defense => number: has getter and setter
- strength => number : has getter and setter
- luck => number : has getter and setter
- life => number : has getter and setter

**HINT:** To make it easier to create your getter and setters google attr_accessor, attr_reader and attr_writer

#### Fighter Methods

attack(opponent) => function that takes opponent object as argument and does damage equal to strength

**HINT**

<details>
<summary>
Reveal
</summary>
<p>

```ruby
    def attack(opp)
        opp.life = opp.life - (@strength - opp.defense)
        puts "#{opp.name} now has #{opp.life} life left"
    end
```
</p>
</details>

**STOP** Before you go further test your fighter class, create a new fighter or two and test the functions and properties.

```ruby
ken = Fighter.new("Ken", 5,5,5,5)
ryu = Fighter.new("Ryu", 7,7,7,7)
puts ken.life
ryu.attack(ken)
puts ken.life
```

### Dojo Class

This class represents how the fighter trains each week, so the methods represent activites at the dojo. There is only one dojo so all the methods should be class methods no instance methods.

**methods to create:**

lift_weights(fighter) => takes in fighter and adds 1 to strength
endurance_training(fighter) => takes in fighter and adds 1 to defense
coin_in_fountain(fighter) => takes in fighter and adds 1 to strength

**HINT**

<details>
<summary>
Reveal
</summary>
<p>

```ruby
class Dojo

    def self.lift_weights(fighter)
        fighter.strength += 1
    end

end

ken = Fighter.new("Ken", 5,5,5,5)
ryu = Fighter.new("Ryu", 7,7,7,7)

puts ryu.strength
Dojo.lift_weights(ryu)
puts ryu.strength
```
</p>
</details>

## Creating the Game

** Follow the Psuedo Code for the game below **

Step 1 - create character
 - welcome player to game and ask for their name
 - use gets to get players name in variable
 - create new fighter ```player = Fighter.new(name, 0,0,0, 10)```
 * all their stats start at 0 except life which is 10 *
 - create their opponent ```Akuma = Fighter.new("Akuma", 4,4,4,10)```

Step 2 - Training Loop
 - put a prompt telling the story and explaining the game
 - create a while look that will loop 10 times
 - in the while loop ask the player how they'd like to train that week
 - based on their choice invoke the right dojo function to train the player

Step 3 - The Battle
 - after the previous while loop create prompt explaining the big battle has arrived
 - create an infinite loop
 - have the player and their opponent take turns attacking each other
 - at the end of each loop check the life of both fighters
 - if one is at 0 or below, break the loop and declare the survivor the winner

 **HINT**

<details>
<summary>
Reveal
</summary>
<p>

```ruby
while true
    player.attack(akuma)
    akuma.attack(player)

    if player.life >= 0
        puts "Akuma has won the battle!"
        break
    end

    if akuma.life >= 0
        puts "#{player.life} has won the battle!"
        break
    end
end
```
</p>
</details>

## Things to Consider

- Make sure you tested the fighters thoroughly so you don't end up with an infinite loop cause they can't do damage to each other or they accidentally increase each others life (you may want to add a test in attach in case they end up doing negative damage)

## Hungry For More
Want to make your game more fun!

- Make the opponent have random stats
- Use the Luck stat to test whether an attack may miss
- add other activities at the dojo
- be creative