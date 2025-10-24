# Notes App
# This program allows the user to manage notes across three categories: work, personal, and ideas.
# It demonstrates:
# - input() to get user input
# - if / elif / else statements for handling different actions (add, view, remove, replace)
# - while loops to keep the program running until the user chooses to exit
# - list operations (append, pop, indexing) for managing notes
# - enumerating a list to display numbered notes
# - simple error handling for invalid input

print("Hello and Welcome to your Notes App!")

notes = {
    "work": [],
    "personal": [],
    "ideas": []
}

keep_going = "yes"

while keep_going == "yes":
    category = input("Which category would you like to enter your note to? (work/personal/ideas): ").lower().strip()
    action = input("What would you like to do in this category? (add/view/remove/replace): ").lower().strip()

    if action == "add":
        note = input("Please enter your note: ").strip()
        notes[category].append(note)
        print("Your note has been added to its category")

    elif action == "view":
        if notes[category]:
            print(f"\nNotes in {category.capitalize()}: ")
            for number, note_texts in enumerate(notes[category], start=1):
                print(f"{number} {note_texts}")
        else:
            print(f"No notes in {category.capitalize()} yet.")

    elif action == "remove":
        if notes[category]:
            print(f"\nNotes in {category.capitalize()}: ")
            for number, note_texts in enumerate(notes[category], start=1):
                print(f"{number} {note_texts}")

            choice = input("Please enter the number of the note you would like to remove: ")

            if choice.isdigit():
                note_index = int(choice) - 1

                if 0 <= note_index < len(notes[category]):
                    removed_note = notes[category].pop(note_index)
                    print(f"Removed: {removed_note}")
                else:
                    print("Invalid number. Please enter a valid number from the note list.")
            else:
                print("Invalid input. Please enter a number.")
        else:
            print(f"No notes from {category.capitalize()} to remove yet.")

    elif action == "replace":
        if notes[category]:
            print(f"\nNotes in {category.capitalize()}: ")
            for number, note_texts in enumerate(notes[category], start=1):
                print(f"{number} {note_texts}")

            choice = input("Please enter the number of the note you would like to replace: ")

            if choice.isdigit():
                note_index = int(choice) - 1

                if 0 <= note_index < len(notes[category]):
                    new_note = input("Enter the new note: ").strip()
                    old_note = notes[category][note_index]
                    notes[category][note_index] = new_note
                    print(f"Replaced '{old_note}' with '{new_note}'.")
                else:
                    print("Invalid number. Please enter a valid number from the note list.")
            else:
                print("Invalid input. Please enter a number.")
        else:
            print(f"No notes from {category.capitalize()} to replace yet.")

    else:
        print("Invalid action. Please choose add, view, remove, or replace.")

    keep_going = input("\nWould you like to continue? (yes/no): ").lower().strip()

