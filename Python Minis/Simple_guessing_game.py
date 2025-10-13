# Number Guessing Game
# This program lets the user guess a secret number between 1 and 10.
# It demonstrates:
# - input() to get user input
# - if / elif / else statements for conditional logic
# - while loops to repeat actions until the correct number is guessed
# - a counter to track the number of guesses

print("Hello and welcome to the guessing game! \n")
print("I'll tell you if the number is too high or too low \n")

secret_num = 7
guess_counter = 1  
guess = int(input("Guess the number between 1 and 10:\n "))

while guess != secret_num:
    if guess < secret_num:
        print("That's too low \n")
    elif guess > secret_num:
        print("That's too high \n")
    
    guess = int(input("Try again:\n "))
    guess_counter += 1  

print(f"Good job! You guessed the number in {guess_counter} tries \n")
print("Thanks for playing, have a great one!")
