import string

print("Welcome to the Mood Analyser & Tracker")
print ("\nThis program will help you understand whether your mood has been \nnegative or positive overtime and encourage you regardless regardless")

negative_words_counter = 0
positive_words_counter = 0
entry_counter = 0

negative_words = ["sad", "angry", "lost", "tired", "mad", "annoyed", "irritated", "anxious", "scared", "fearful", "crying", "cry", "doubt" , "helpless", "hopeless", "rude", "doubtful", "impatient", "jealous", "jealousy",  "stupid", "down", "insecure", "ashamed"]

positive_words = ["happy", "hopeful", "excited", "calm", "confident", "joyful", "laughter", "laugh", "laughing",  "patience", "purposeful", "excited", "powerful", "faith", "peaceful", "at peace", "pride", "smart", "proud", "energized"]

keep_going = "yes"

while keep_going == "yes":
    
    # Asks user for mood entry
    mood_entry = input("Hey, how are you feeling today? ").lower().strip()
    
    # Removes punctuation to match words correctly
    mood_entry_clean = mood_entry.translate(str.maketrans('', '', string.punctuation))
    
    
    entry_counter += 1

    # Count negative and positive words user enters
    words = mood_entry.split()
    for word in words:
        if word in negative_words:
            negative_words_counter += 1
        elif word in positive_words:
            positive_words_counter += 1

    # Replace negative words for display
    mood_entry = mood_entry.replace("sad", "happy")
    mood_entry = mood_entry.replace("annoyed", "calm")
    mood_entry = mood_entry.replace("tired", "energized")
    mood_entry = mood_entry.replace("ashamed", "proud")
    mood_entry = mood_entry.replace("lost", "purposeful")
    mood_entry = mood_entry.replace("doubt", "faith")
    mood_entry = mood_entry.replace("cry", "laugh")
    mood_entry = mood_entry.replace("crying", "laughing")
    mood_entry = mood_entry.replace("insecure", "confident")
    mood_entry = mood_entry.replace("hopeless", "excited")
    mood_entry = mood_entry.replace("scared", "peaceful")
    mood_entry = mood_entry.replace("helpless", "joyful")
    mood_entry = mood_entry.replace("stupid", "smart")
    mood_entry = mood_entry.replace("anxious", "at peace")

    # Print encouragement and counters
    print()
    print(f"I hear you, it's completely valid to feel that why but, having a \npositive outlook on this is very important and so is using \npositive affirmations, for example look at it this way {mood_entry} ")
    print()
    
    print(f"Okay so first, you have entered roughly {negative_words_counter} negative words\n")
    print(f"And you have entered roughly {positive_words_counter} positive words!\n")
    print(f"You have had {entry_counter} mood entries\n")

    if negative_words_counter > positive_words_counter:
        print("I know things may seem out of place and out of \ncontrol right now but keep showing up for yourself, build a \nstrong routine based on areas of your life you would like to change \n or better and with time you will see a difference")
    else:
        print("\nYou have had a great outlook on things recently and \n it shows, good job on showing up for yourself and keep going \nyou are doing amazing! ")

    # Ask if the user wants to make another entry
    keep_going = input("\nWould you like to make another entry yes or no? ").lower().strip()

print("\nOkay have a great day and keep winning!")
