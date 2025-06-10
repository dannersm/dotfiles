#!/bin/bash

# Move to Documents folder
cd ~/Documents || {
    echo "Error: Could not access ~/Documents"
    exit 1
}

# Use fzf to select a directory only
selected=$(find . -type d | fzf --prompt="Select directory: ")

# Check if user made a selection
if [ -z "$selected" ]; then
    echo "No selection made. Exiting."
    exit 0
fi

# Use the selected directory directly
target_dir="$selected"

# Move to the target directory
cd "$target_dir" || {
    echo "Error: Could not access directory $target_dir"
    exit 1
}

# Get absolute path for session naming
abs_path=$(pwd)
session_name=$(basename "$abs_path")

# Create or attach to tmux session
if tmux has-session -t "$session_name" 2>/dev/null; then
    echo "Attaching to existing tmux session: $session_name"
    tmux attach-session -t "$session_name"
else
    echo "Creating new tmux session: $session_name in $abs_path"
    
    # Check if .venv directory exists and activate it
    if [ -d ".venv" ]; then
        echo "Found .venv directory. Activating virtual environment..."
        tmux new-session -d -s "$session_name" -c "$abs_path" \; \
             send-keys "source .venv/bin/activate" C-m \; \
             attach-session -t "$session_name"
    else
        tmux new-session -s "$session_name" -c "$abs_path"
    fi
fi
