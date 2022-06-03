##
#  Changing Directories
##

# change directories without typing cd
setopt auto_cd

# push old directories onto the directory stack
setopt auto_pushd

# don't push multiple copies of a dir onto the stack
setopt pushd_ignore_dups

# cd -NUM uses 0 as most recent
setopt pushd_minus

##
#  Completion
##

# don't move to the end of a word when completing
setopt complete_in_word

##
#  History
##

# store timestamps & duration for commands
setopt extended_history

# remove the old duplicate when a command is run
setopt hist_ignore_all_dups

# don't add commands starting with a space to history
setopt hist_ignore_space

# share history across sessions
setopt share_history

##
#  Input/Output
##

# allow comments in interactive shells
setopt interactive_comments

##
#  Job Control
##

# show PID of suspended processes
setopt long_list_jobs

##
#  Zsh Line Editor
##

# beeps are annoying
setopt no_beep

# stop ctrl + s freezing the terminal
setopt noflowcontrol
