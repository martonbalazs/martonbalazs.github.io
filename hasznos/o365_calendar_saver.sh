#!/bin/bash
# Edit the below, and make sure [dir] is empty!! (And saves within the same minute get overwriten. Make sure you have wget installed.)
# For your calendar.ics url, open https://www.office.com/ , click Calendar, click the cogwheel upper right, then Calendar, then Calendar publishing on the left. Set permissions to Full details, and click Save. The ics link should show, copy it to below.

#########

dir="$HOME/uob/o365_calendar_hist/"
filen="o365_calendar_hist"
icsurl="[your calendar.ics url here]"

#########

if [ ! -d "$dir" ]; then
 echo "Cannot find $dir, exiting. Create this first."
 exit 1
fi

echo "Saving O365 calendar"

cd "$dir"

if [ -f "$filen.tar.gz" ]
then
 tar -xf "$filen.tar.gz"
 rm -v "$filen.tar.gz"
fi

wget "$icsurl"

d=`date +%y%m%d_%H%M`

mv -v calendar.ics calendar_$d.ics

tar -cf "$filen.tar" *
gzip "$filen.tar"
rm -v calendar*.ics
