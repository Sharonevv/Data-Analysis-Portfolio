# even_or_odd_checker.py
# This program asks the user to enter a number and tells them 
# whether it is even or odd.
# It repeats the process as long as the user wants to continue.
# Concepts demonstrated:
# - input() for user interaction
# - if/else conditionals
# - while loop for repetition
# - string methods (.lower())
# - use of print() for cleaner formatting


print("Welcome to the Even or Odd Checker!\n")
print("I'll tell you if a number is even or odd.\n")


query = input("Would you like to enter a number and I'll tell you if it's even or odd? yes or no: ").lower()


while query == "yes":
    # Ask the user for a number
    num = int(input("\nOkay, please enter a number: "))

    # Check if the number is even or odd
    if num % 2 == 0:
        print("That's an even number\n")
    else:
        print("That's an odd number\n")

    
    print()
    query = input("Would you like to enter another number? yes or no: ").lower()
    print()
        

print("\nOkay, thanks for playing! Have a great one")


