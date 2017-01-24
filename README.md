# Battle
### [Makers Academy] (http://www.makersacademy.com) - Week 3 Pair Programming Project

[Project Setup] (#Setup) | [Running Battle] (#Run) | [User Story](#Story) | [Play Live] (#Live) | [Screen Shots] (#Shots)

## <a name="Outline">Outline</a>


## <a name="Setup">Project Setup</a>
### Gem files used in project
* rspec
* sinatra
* rspec-sinatra
* capybara
* selenium-webdriver
* shotgun

### Clone the project
```
$ git clone https://github.com/adrianeyre/battle
$ cd battle
$ bundle
```

### Change day branch
```
$ git checkout <branch>
```
where `<branch>` is either day-two, day-three, day-four or day-five

### Ruby version
Battle is ran on Ruby version : 2.3.1

* To change Ruby versions
```shell
$ rvm 2.3.1
```
* To install Ruby 2.3.1
```shell
$ rvm install ruby-2.3.1
```
* To install Gems
```shell
$ gem install bundle
$ bundle
```
## <a name="Run">Running Battle</a>
Battle is ran on the Sinatra framework

### Test in browser
Terminal
```shell
$ ruby app.rb -p 4567
```
Browser
```
http://localhost:4567/
```

## <a name="Story">User Story</a>
```
As two Players,
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10

As two Players,
So we can continue our game of Battle,
We want to switch turns

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first
```

## Extra User Stories
```
As a Player,
So I can play a suspenseful game of Battle,
I want all Attacks to deal a random amount of damage

As a lonely Player,
So I can keep my Battle skills up to scratch
I want to play a Computerised opponent

As a Player,
So I can enjoy a game of Battle with more variety,
I want to choose from a range of attacks I could make

As a Player,
So I can better enjoy a game of Battle,
I want some of my attacks to Paralyse an opponent (chance of losing their next attack)

As a Player,
So I can better enjoy a game of Battle,
I want one of my attacks to have a chance of Poisoning my Opponent (Opponent takes a small random amount of damage at the beginning of their turn)

As a Player,
So I can better enjoy a game of Battle,
I want to make an attack that has a chance of sending my Opponent to Sleep (Opponent definitely misses next turn)

As a Player,
So I can extend my joyous experience of Battle,
I want to have an attack that heals some of my Hit Points

As a Player,
So I can enjoy my game of Battle,
I want a sexy user interface
```
## <a name="Live">Play Live on Heroku</a>
[Battle] (https://adrianeyre-battle.herokuapp.com)

## <a name="Shots">Screen Shots</a>

### Character Selection Screen
[![ScreenShot1](https://raw.githubusercontent.com/adrianeyre/battle/master/images/ScreenShot1.png)](https://raw.githubusercontent.com/adrianeyre/battle/master/images/ScreenShot1.png "Screen Shot 1")

### Main Game Screen
[![ScreenShot2](https://raw.githubusercontent.com/adrianeyre/battle/master/images/ScreenShot2.png)](https://raw.githubusercontent.com/adrianeyre/battle/master/images/ScreenShot2.png "Screen Shot 2")

### Game-Over Screen
[![ScreenShot3](https://raw.githubusercontent.com/adrianeyre/battle/master/images/ScreenShot3.png)](https://raw.githubusercontent.com/adrianeyre/battle/master/images/ScreenShot3.png "Screen Shot 3")
