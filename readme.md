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
**HINT**
</summary>
<p>
```ruby
def attack(opp)
    opp.setLife(opp.getLife - @strength)
end
```
</p>
</details>
