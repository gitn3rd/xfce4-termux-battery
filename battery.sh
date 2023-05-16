#!/bin/bash
export TMPFILE="$(mktemp)-tmP"
termux-battery-status > $TMPFILE
PLUGGED_STATE="$(cat $TMPFILE | jq .plugged)"
PERCENTAGE=$(cat $TMPFILE | jq .percentage)
LOW_BAT_STATE=20
rm $TMPFILE

if [ $PLUGGED_STATE == '"PLUGGED_AC"' ]; then
 echo -n '🔌'
 else
    if [ $PERCENTAGE -gt $LOW_BAT_STAT ]; then
        echo -n '🔋'
    else
        echo -n '⚠️'
    fi
fi
echo -e "$PERCENTAGE%"