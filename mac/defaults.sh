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

# Use current directory as default search scope in Finder
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Show Path bar in Finder
defaults write com.apple.finder ShowPathbar -bool true

# Show Status bar in Finder
defaults write com.apple.finder ShowStatusBar -bool true

# Set a blazingly fast keyboard repeat rate
#defaults write NSGlobalDomain KeyRepeat -int 0.02

# Set a shorter Delay until key repeat
#defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Enable Safari’s debug menu
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# Add a context menu item for showing the Web Inspector in web views
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

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
#defaults write com.apple.dock expose-group-by-app -bool false

# Don’t show Dashboard as a Space
# (not needed anymore, could be controlled via Mission Control prefs pane)
# defaults write com.apple.dock dashboard-in-overlay -bool true

# Remove the auto-hiding Dock delay
#defaults write com.apple.Dock autohide-delay -float 0

# Remove the animation when hiding/showing the Dock
defaults write com.apple.dock autohide-time-modifier -float 0

# Enable the 2D Dock
# (doesn't work in Mavericks anymore)
# defaults write com.apple.dock no-glass -bool true

# Automatically hide and show the Dock
defaults write com.apple.dock autohide -bool true

# large dock icons
defaults write com.apple.dock largesize -float 96

# speed up launchpad hide-show animation
defaults write com.apple.dock springboard-show-duration -float 0.1
defaults write com.apple.dock springboard-hide-duration -float 0.1

# speed up launchpad change pages speed
defaults write com.apple.dock springboard-page-duration -float 0.1

# disable bouncing icon in the dock
# defaults write com.apple.dock no-bouncing -bool TRUE

# disable rubberband effect in lists/pages
defaults write -g NSScrollViewRubberbanding -int 0

# show hidden application (⌘ H) icons in the dock as a translucent icons
defaults write com.apple.dock showhidden -bool true

# disable scroll animation
defaults write -g NSScrollAnimationEnabled -bool false

# disable .DS_Store creation on network drives
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true

# disable ssh and keychain interactions
# defaults write org.openbsd.openssh KeychainIntegration -bool false

# disable history-swipe for chrome
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool FALSE

# ... and for yandex browser
defaults write ru.yandex.desktop.yandex-browser AppleEnableSwipeNavigateWithScrolls -bool FALSE

# ... and for Vivaldi browser
defaults write com.vivaldi.Vivaldi AppleEnableSwipeNavigateWithScrolls -bool FALSE

# disable Photos app opening automatically
defaults write com.apple.ImageCapture disableHotPlug -bool true

# turn off animations in finder
defaults write com.apple.finder DisableAllAnimations -bool true

# disable window resize slow speed
defaults write -g NSWindowResizeTime -float 0.001
