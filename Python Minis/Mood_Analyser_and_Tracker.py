import string

print("Welcome to the Mood Analyser & Tracker")
print("\nThis program will help you understand whether your mood has been "
      "negative or positive overtime and encourage you regardless regardless")

negative_words_counter = 0
positive_words_counter = 0
entry_counter = 0

negative_words = [
    "sad", "angry", "lost", "tired", "mad", "annoyed", "irritated", "anxious",
    "scared", "fearful", "crying", "cry", "doubt", "helpless", "hopeless",
    "rude", "doubtful", "impatient", "jealous", "jealousy", "stupid", "down",
    "insecure", "ashamed"
]

positive_words = [
    "happy", "hopeful", "excited", "calm", "confident", "joyful", "laughter",
    "laugh", "laughing", "patience", "purposeful", "powerful", "faith",
    "peaceful", "at peace", "pride", "smart", "proud", "energized"
]

# Words to replace negative emotions with positive ones for reframing
replacements = {
    "sad": "happy",
    "annoyed": "calm",
    "tired": "energized",
    "ashamed": "proud",
    "lost": "purposeful",
    "doubt": "faith",
    "cry": "laugh",
    "crying": "laughing",
    "insecure": "confident",
    "hopeless": "excited",
    "scared": "peaceful",
    "helpless": "joyful",
    "stupid": "smart",
    "anxious": "at peace"
}

keep_going = "yes"

while keep_going == "yes":
    # Ask user about their current mood
    mood_entry = input("Hey, how are you feeling today? ").lower().strip()

    # Remove punctuation to ensure accurate word matching
    mood_entry_clean = mood_entry.translate(str.maketrans('', '', string.punctuation))

    entry_counter += 1

    # Count how many positive or negative words appear in the user's response
    words = mood_entry_clean.split()
    for word in words:
        if word in negative_words:
            negative_words_counter += 1
        elif word in positive_words:
            positive_words_counter += 1

    # Replace negative words with more positive ones for perspective
    for word, replacement in replacements.items():
        mood_entry = mood_entry.replace(word, replacement)

    # Reflect the user’s feelings and share encouragement
    print()
    print(f"I hear you, it's completely valid to feel that way, but having a "
          f"positive outlook on this is very important. For example, look at it this way: {mood_entry}")
    print()

    # Show progress and mood statistics
    print(f"You've used about {negative_words_counter} negative words.")
    print(f"And about {positive_words_counter} positive words!")
    print(f"You've made {entry_counter} mood entries so far.\n")

    # Give feedback based on which type of words appear more
    if negative_words_counter > positive_words_counter:
        print("I know things may seem out of place or out of control right now, "
              "but keep showing up for yourself. Build a routine around areas "
              "you want to improve, and you'll see progress with time.")
    else:
        print("You've had a great outlook on things recently—it really shows. "
              "Keep going, you're doing amazing!")

    # Ask if the user wants to continue tracking
    keep_going = input("\nWould you like to make another entry (yes or no)? ").lower().strip()

print("\nOkay have a great day and keep winning!")
