#!/bin/zsh --no-rcs

# Kill Nudge application is running
PID=$(pgrep "Nudge")
if [ "$?" -eq "0" ]; then
    echo "Nudge is running, killing all instances"
    killall Nudge
fi

# Remove Nudge.app from default install location if detected
if [ -d /Applications/Utilities/Nudge.app ]; then
    echo "Nudge exists. Removing.."
    rm -rf /Applications/Utilities/Nudge.app
fi

# Remove Nudge launchagent if detected
if [ -f /Library/LaunchAgents/com.github.macadmins.Nudge.plist ]; then
    echo "Nudge launchagent exists. Removing Nudge launchagent.."
    rm -f /Library/LaunchAgents/com.github.macadmins.Nudge.plist
fi

echo "Nudge uninstall completed."