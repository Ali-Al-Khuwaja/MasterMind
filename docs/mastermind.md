MasterMInd \- a simple board game.

## **How does the game work ?**

This game has only two players with a special role for each.

1. _The Code maker._
2. _The Code breaker._

_The code maker_ will make a secret code made out of 4 colored balls , and _the code breaker_ has to figure out the secret code . There are only 6 colors in the game.

![Image Description](https://external-preview.redd.it/SzDMO4aNu28pZbe17f-5aBF8Zmd0_29kcGEJfxWLlW8.jpg?width=640&crop=smart&auto=webp&s=c2e82cc12c8cdd4451f2dc24519bdf0550588a9f)

[Source of image](https://external-preview.redd.it/SzDMO4aNu28pZbe17f-5aBF8Zmd0_29kcGEJfxWLlW8.jpg?width=640&crop=smart&auto=webp&s=c2e82cc12c8cdd4451f2dc24519bdf0550588a9f)

### Gameplay

_The code breaker_ has to guess the 4 hidden colored balls with the right index/order, _the code breaker_ has only 10 trials to guess the secret code, for each trail _the code breaker_ will pick and put down 4 colored balls and choose an index for each colored ball.

_The code maker_ will give feedback to _the code breaker_ if his guess is right or wrong, to hint the secret code, _the code maker_ will put a black or a white colored ball next to _the code breaker’s_ guess

- If _the code breaker_ has placed a ball with the right index and color then _the code maker_ will put a black ball to indicate that there is a ball with the correct color and index.

- If _the code breaker_ has placed a ball with right color but wrong index then _the code maker_ will put a white ball to indicate that there is a ball with the right color but with the wrong index.

- If _the code breaker_ has placed a ball with the wrong color then _the code maker_ will put nothing to hint that the ball is not valid.

The secret code will be exposed only if _the code breaker_ has won or when _the code breaker_ fails to break the secret code after 10 trials.

Every failing attempt from _the code breaker_ to guess the right secret code will give _the code maker_ a point and if _the code breaker_ fails completely then _the code maker_ will get 11 points.

You can count the collected points for each player when they swap roles between rounds to decide who has won

Easy and hard modes :

- Easy mode :

1\. The colors can not be repeated in the secret code.

2\. The code maker will give feedback in an ordered layout. first for the first , second for the second ... etc

3\. Available colors will be reduced to 4 instead of 6.

- Hard mode :

1\. The colored balls can be repeated in the secret code.

2\. The code maker will give feedback balls in unordered layout.

3\. Availabe colors will be 6 instead of 4.

The game should allows to pick between pc vs human and human vs human plus choosing the difficulty
