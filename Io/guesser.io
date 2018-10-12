randomNum := Random value(100) floor + 1
# randomNum println
guesser := method(
  guesses := 0;
  lastGuess := -1
  guess := -1
  "Guess a number between 1 and 100" println;
  while(guess != randomNum and guesses < 10,
    guess =  File standardInput readLine asNumber
    guesses = guesses + 1
    if (guess == randomNum, "you got it!" println; return)
    if (lastGuess !=  -1, if ((lastGuess - randomNum) abs > (guess - randomNum) abs, "warmer...", "colder..."), "nope!") println
    lastGuess = guess
  )
)

guesser
