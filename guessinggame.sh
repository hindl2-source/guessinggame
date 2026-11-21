
#!/usr/bin/env bash

# Function to count files in the current directory
count_files() {
    find . -maxdepth 1 -type f | wc -l
}

# Function to play the guessing game
play_game() {
    local files_count
    local guess

    files_count=$(count_files)

    echo "Welcome to the Guessing Game!"
    echo "How many files are in the current directory?"

    while true
    do
        read -r -p "Enter your guess: " guess

        if ! [[ "$guess" =~ ^[0-9]+$ ]]
        then
            echo "Please enter a valid positive number."
        elif [[ $guess -lt $files_count ]]
        then
            echo "Your guess is too low. Try again!"
        elif [[ $guess -gt $files_count ]]
        then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed correctly!"
            break
        fi
    done
}

# Start the game
play_game
