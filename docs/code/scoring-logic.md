Score object :
make a add_point method
store points

---

How does the code maker gain points ?

1. he gains a point if the code breaker fails a trail .
2. he gains a point when the breaker fails all his attempts.

How does the code breaker gain points ?

1. he gains 5 point if he guesses the secret code .

---

code_breaker has_won? ,expose secret code ,end round .
code_breaker failed 10 times? ,expose secret code ,end round .

how to increase the score ?

1. win a round

they should switch places at least twice for game to be valid .

The algorithm :
compare both codes , if they both match then the breaker has won
if they do not match , play again
