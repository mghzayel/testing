#!/bin/bash

echo "======================================="
echo " Google Drive COMPLETE UNINSTALL (macOS)"
echo "======================================="
echo ""

echo "🔴 Force quitting Google Drive..."

pkill -f "Google Drive"
pkill -f "Google Drive Helper"
pkill -f "Google Drive File Stream"

sleep 2

echo "🛑 Unloading launch agents..."

launchctl unload ~/Library/LaunchAgents/com.google.drivefs.plist 2>/dev/null
sudo launchctl unload /Library/LaunchAgents/com.google.drivefs.plist 2>/dev/null

sleep 1

echo "🗑️ Removing applications..."

sudo rm -rf "/Applications/Google Drive.app"
sudo rm -rf "/Applications/Google Drive File Stream.app"

echo "🧹 Removing user files..."

rm -rf ~/Library/Application\ Support/Google/DriveFS
rm -rf ~/Library/Application\ Support/Google/Drive
rm -rf ~/Library/Caches/com.google.drivefs
rm -rf ~/Library/Caches/com.google.GoogleDrive
rm -rf ~/Library/Preferences/com.google.drivefs.plist
rm -rf ~/Library/Preferences/com.google.GoogleDrive.plist
rm -rf ~/Library/Logs/Google/DriveFS
rm -rf ~/Library/Logs/GoogleDrive

echo "🧼 Removing system files..."

sudo rm -rf /Library/Application\ Support/Google/DriveFS
sudo rm -rf /Library/Preferences/com.google.drivefs.plist
sudo rm -rf /Library/LaunchAgents/com.google.drivefs.plist

echo ""
echo "✅ Google Drive completely removed."
echo "🔁 Please RESTART your Mac."
echo ""
echo "Press ENTER to close..."
read
