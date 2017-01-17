# Battle
### [Makers Academy] (http://www.makersacademy.com) - Week 3 Pair Programming Project

[Project Setup] (#Setup) | [User Story](#Story) | [Files Used] (#Files)

## <a name="Outline">Outline</a>


## <a name="Setup">Project Setup</a>
### Gem files used in project
* rspec
* sinatra
* rspec-sinatra
* capybara
* selenium-webdriver
* shotgun

### Clone and run project
```
$ git clone https://github.com/adrianeyre/battle
$ cd battle
$ bundle
$ rspec
```

### Change day branch
```
$ git checkout <branch>
```
where `<branch>` is either day-two, day-three, day-four or day-five

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
