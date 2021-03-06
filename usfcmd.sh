# Some useful commands for terminal

# Animations
# Disable window animations
defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false
# Disable Rubber Band Effect
defaults write -g NSScrollViewRubberbanding -int 0
# Disable Mission Control Animation
defaults write com.apple.dock expose-animation-duration -int 0; killall Dock
# Speed Up a Slow Terminal by Clearing Log Files
sudo rm -rf /private/var/log/asl/*.asl

# subl start sublime text in terminal
ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" ~/bin/subl

# add spacer in dock apps
defaults write com.apple.dock persistent-apps -array-add ‘{tile-data={}; tile-type=“spacer-tile”;}’; killall dock;
# add spacer in dock others
defaults write com.apple.dock persistent-others -array-add ‘{tile-data={}; tile-type=“spacer-tile”;}’; killall dock;

# Resize image
sips -Z 640 *.jpg