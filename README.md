This is a two-way sync script for your Mac and Ebook. 

Install
=======

* copy sync-books.sh somewhere in your system ( e.g. ~/scripts/sync-books.sh ) and make it executable (chmod +x ~/scripts/sync-books.sh)
* copy plist file to your ~/Library/LaunchAgents/ folder
* edit plist file and correct:
    * the path to sync-books.sh ( `<string>/Users/test/scripts/sync-books.sh</string>` ) should be *absolute* 
* edit sync-books.sh
    * the path to your Mac folder with books ( DST=~/Documents/EBOOK/ )
    * the path to your Ebook folder when it is mounted to the system ( SRC=/Volumes/EBOOK/sync/ )
* run: `launchctl load ~/Library/LaunchAgents`


Usage:
======
Connect your Ebook device to the Mac and wait up to 30 seconds for a Growl notification.
The files are first synced from SRC to DST, then back.


Troubleshooting
===============
For error logs look into /var/log/system.log ( `tail -f /var/log/system.log` in realtime )

