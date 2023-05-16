# xfce4-termux-battery
get battery status in xfce4 in termux.
script that shows output using xfce4-genmon-plugin in the panel

# example
charging:

🔌96%

discharging:

🔋96%


# requirements

- Termux API
- pkg install xfce4-genmon-plugin
- pkg install jq

# installation

create a checkout of this repository
add the 'generic monitor' to the xfce4 panel
select battery.sh as command