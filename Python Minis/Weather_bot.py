"""
Weather_bot.py
This program asks the user for the current weather and responds with a recommendation based on the input.
It handles single weather types and some combinations,
demonstrating the use of:
- input()
- if / elif / else conditionals
- logical operators (and)
- string membership ('in')
- .lower() for case-insensitive input
"""

# Get the weather input from the user and convert to lowercase
weather = input("Hey, what's the weather like today? ").lower()

# Check for combinations first, since they are more specific
if 'sunny' in weather and 'windy' in weather:
    print("Wear your sunglasses and hold onto your hat")

elif 'windy' in weather and 'cloudy' in weather:
    print("It's breezy and overcast, maybe skip the hat today")

# Then check for single weather conditions
elif 'sunny' in weather:
    print("Wear your sunglasses")

elif 'rainy' in weather:
    print("Don't forget your umbrella")

elif 'cloudy' in weather:
    print("Maybe bring a light jacket")

elif 'windy' in weather:
    print("Hold onto your hat")

# Default case if the input does not match any expected values
else:
    print("I don't recognise that weather")


