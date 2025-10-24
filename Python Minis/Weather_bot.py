# Weather Bot
# This program asks the user for the current weather and provides a recommendation based on the input.
# It demonstrates:
# - input() to collect user input
# - if / elif / else statements to handle different weather scenarios
# - logical operators (and) to handle multiple conditions
# - string membership checks using 'in'
# - .lower() for case-insensitive input handling
# - simple decision-making and user guidance based on conditions


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


