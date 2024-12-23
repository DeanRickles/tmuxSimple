#bin/bash
#
# NOTE: 
# * Setup config file to move .tmux.conf to the home directory.
# * Log the changes.
# * Cleanup the setup file.

# TODO:
# * mv file to directory.

# Moves the main tmux file to the user's home directory.
# TODO: add if statement to check if one exists already.
# TODO: add varible to check to see set as global config.
mv tmux.conf "${XDG_CONFIG_HOME:-$HOME}/.tmux.conf"

## Setup tmux when ssh starts. Make a file for the ssh to use for statup.
#cp tmux_starup.sh "${XDG_CONFIG_HOME:-$HOME}/.ssh/tmux_startup.sh"
## Makes the file executable.
#chown +x "${XDG_CONFIG_HOME:-$HOME}/.ssh/tmux_startup.sh"
 
