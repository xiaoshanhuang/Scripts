# Some useful commands for terminal

# Animations
# Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
# Disable Rubber Band Effect
defaults write -g NSScrollViewRubberbanding -int 0

# Resize image
sips -Z 640 *.jpg