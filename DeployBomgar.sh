#!/bin/bash
#Install Bomgar Agent

##Initially used by generating a bomgar jump client, uploading the compressed installer
##to webserver/AWS.
#First download compressed Jump Client from CRTG AWS Instance:
/usr/bin/curl $bomgarURL > /tmp/bomgar.zip
#Next, uncompress downloaded jump client:
unzip -d /tmp /tmp/bomgar.zip
rm -rf /tmp/__MACOSX
rm /tmp/bomgar.zip

#Next, mount the downloaded and uncompressed .dmg:
hdiutil attach -mountpoint /Volumes/foobar /tmp/bomgar-scc-*
 
 #...and run the bomgar installer
'/Volumes/foobar/Double-Click To Start Support Session.app/Contents/MacOS/sdcust'
