#!/bin/zsh --no-rcs

PID=$(pgrep "Nudge")
if [ "$?" -eq "0" ]; then
    echo "Nudge is running, killing all instances"
    killall Nudge
fi

if [ -d /Applications/Utilities/Nudge.app ]; then
    echo "Nudge exists. Removing.."
    rm -rf /Applications/Utilities/Nudge.app
fi

if [ -f /Library/LaunchAgents/com.github.macadmins.Nudge.plist ]; then
    echo "Nudge launchagent exists. Removing Nudge launchagent.."
    rm -f /Library/LaunchAgents/com.github.macadmins.Nudge.plist
fi

echo "Nudge uninstall completed."