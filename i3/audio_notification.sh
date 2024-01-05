#!/bin/bash

muted=$(pactl get-sink-mute @DEFAULT_SINK@ | awk '{print($2)}')

if [[ "$muted" == "no" ]]; then
            audio=$(pactl get-sink-volume @DEFAULT_SINK@ | grep % | awk '{print($5)}')
            str="Audio: $audio"
            img="~/.config/i3/audio.png"
else
            str="Muted"
            img="~/.config/i3/muted.png"
fi

gdbus call --session \
            --dest org.freedesktop.Notifications \
            --object-path /org/freedesktop/Notifications \
            --method org.freedesktop.Notifications.Notify \
            "audio" \
            46833532 \
            "$img" \
            "$str" \
            "" \
            [] \
            {} \
            5000

