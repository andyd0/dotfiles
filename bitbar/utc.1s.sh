#!/bin/bash

# Display UTC in the menubar, and one or more additional zones in the drop down.
# The current format (HH:MM:SS) works best with a one second refresh, or alter
# the format and refresh rate to taste.
#
# <bitbar.title>World Clock</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Adam Snodgrass</bitbar.author>
# <bitbar.author.github>asnodgrass</bitbar.author.github>
# <bitbar.desc>Display current UTC time in the menu bar, with various timezones in the drop-down menu</bitbar.desc>
# <bitbar.image>https://cloud.githubusercontent.com/assets/6187908/12207887/464ff8b2-b617-11e5-9d61-787eed228552.png</bitbar.image>

ZONES="America/New_York America/Los_Angeles"
date -u +'%H:%M:%S UTC'
echo '---'
echo 'UTC'
echo '---'

MILTIME=$(date -u +'%H:%M:%S')
echo "$MILTIME | bash=$0 param1=copy param2=\"$MILTIME\" terminal=false"

STDTIME="$(date "-u" +"%_I:%M:%S %p")"
echo "$STDTIME | bash=$0 param1=copy param2=\"$STDTIME\" terminal=false"

echo '---'
echo 'Other Zones'
echo '---'
for zone in $ZONES; do
  TIMEZONETIME="$(TZ=$zone date +'%H:%M:%S %z') $zone"
  echo "$TIMEZONETIME | bash=$0 param1=copy param2=\"$TIMEZONETIME\" terminal=false"
done


# Display todays date and time in various formats including ISO8601 and allows copying to clipboard.

# Comment out the dates you don't need.

# <bitbar.title>Date Picker</bitbar.title>
# <bitbar.version>v1.0</bitbar.version>
# <bitbar.author>Tim Battersby</bitbar.author>
# <bitbar.author.github>uglygus</bitbar.author.github>
# <bitbar.desc>Display todays date in various forms including iso8601 and copies to the clipboard.</bitbar.desc>
# <bitbar.dependencies></bitbar.dependencies>
# <bitbar.image>https://i.imgur.com/GVSUqFX.png</bitbar.image>

#---ISO8601
echo "---"
echo "Current Timezone"
echo "---"

YMD=$(date +%F)
echo "$YMD | bash=$0 param1=copy param2=$YMD terminal=false"

DATETIME=$(date -u +"%Y-%m-%dT%H:%M:%SZ")
echo "$DATETIME | bash=$0 param1=copy param2=$DATETIME terminal=false"

echo "---"

#---USA

MDY=$(date "+%D")
echo "$MDY | bash=$0 param1=copy param2=$MDY terminal=false"

 MonDY=$(date +"%b %d %Y")
 echo "$MonDY | bash=$0 param1=copy param2=\"$MonDY\" terminal=false"

TIME12=$(date +"%r")
echo "$TIME12 | bash=$0 param1=copy param2=\"$TIME12\" terminal=false"

echo "---"


#---REST OF THE WORLD

DMY=$(date +"%d/%m/%y")
echo "$DMY | bash=$0 param1=copy param2=$YMD terminal=false"

DMonY=$(date +"%d %b %Y")
echo "$DMonY | bash=$0 param1=copy param2=\"$DMonY\" terminal=false"

TIMESTAMP=$(date +"%T %D")
echo "$TIMESTAMP | bash=$0 param1=copy param2=\"$TIMESTAMP\" terminal=false"


TIME24=$(date +"%R:%S")
echo "$TIME24 | bash=$0 param1=copy param2=\"$TIME24\" terminal=false"

#---UNIX TIME
echo "---"
UNIXTIME=$(date +"%s")
echo "$UNIXTIME | bash=$0 param1=copy param2=\"$UNIXTIME\" terminal=false"

if [[ "$#" -ge 1 ]];then
    if [[ "$1" == 'copy' ]] ; then

        echo -n "$2" | pbcopy
        echo COPIED "$2"
    fi
fi
