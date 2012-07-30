This is a two-way sync script for your Mac and Ebook device. It syncs
your folder with books when you connect device with a cable to your Mac.

Install
=======

* copy sync-books.sh somewhere in your system ( e.g. `~/scripts/sync-books.sh` ) and make it executable (`chmod +x ~/scripts/sync-books.sh`)
* copy plist file to your `~/Library/LaunchAgents/` folder
* edit plist file and correct:
    * the path to sync-books.sh ( `<string>/Users/test/scripts/sync-books.sh</string>` ) should be **absolute** 
* edit sync-books.sh
    * the path to your Mac folder with books ( `DST=~/Documents/EBOOK/` )
    * the path to your Ebook folder when it is mounted to the system ( `SRC=/Volumes/EBOOK/sync/` )
* run: `launchctl load ~/Library/LaunchAgents`


Usage:
======
Connect your Ebook device to the Mac and wait up to 30 seconds for a Growl notification.
The files are first synced from SRC to DST, then back.


Troubleshooting
===============
Make sure that `SRC` folder exists when your Ebook device is mounted to
the system. 

You may want to rename its mount point if you have several devices with
the same name (like *Untitled*). Just right click on your device in Finder, select Get Info in menu, and give it a unique name.

For error logs look into /var/log/system.log ( `tail -f /var/log/system.log` in realtime )

