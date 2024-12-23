#!/bin/bash

# Check if we're in an interactive SSH session
if [[ $- =~ i ]]; then
    # Check if tmux is already running
    if ! pgrep -x tmux > /dev/null; then
        # Start a new tmux session
        tmux new-session -s ssh
    fi
fi
