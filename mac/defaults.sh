#!/bin/sh

# contains various hacks for mac os x
# based on this https://github.com/paulirish/dotfiles/blob/master/.osx

# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# Enable full keyboard access for all controls
# (e.g. enable Tab in modal dialogs)
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# Disable press-and-hold for keys in favor of key repeat
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# Disable shadow in screenshots
defaults write com.apple.screencapture disable-shadow -bool true

# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
defaults write com.apple.Finder FXPreferredViewStyle -string "Nlsv"

# Enable highlight hover effect for the grid view of a stack (Dock)
defaults write com.apple.dock mouse-over-hilte-stack -bool true

# Enable spring loading for all Dock items
defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# Show indicator lights for open applications in the Dock
defaults write com.apple.dock show-process-indicators -bool true

# Speed up Mission Control animations
defaults write com.apple.dock expose-animation-duration -float 0.1

# Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
defaults write com.apple.dock expose-group-by-app -bool false

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Remove the auto-hiding Dock delay
#defaults write com.apple.Dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Enable the 2D Dock
defaults write com.apple.dock no-glass -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# large dock icons
defaults write com.apple.dock largesize -float 96

# speed up launchpad hide-show animation
defaults write com.apple.dock springboard-show-duration -float 0.1
defaults write com.apple.dock springboard-hide-duration -float 0.1

# disable bouncing icon in the dock
# defaults write com.apple.dock no-bouncing -bool TRUE

# disable rubberband effect in lists/pages
# defaults write -g NSScrollViewRubberbanding -int 0

# show hidden application (⌘ H) icons in the dock as a translucent icons
defaults write com.apple.dock showhidden -bool true

# disable scroll animation
defaults write -g NSScrollAnimationEnabled -bool false

# disable .DS_Store creation on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores TRUE


