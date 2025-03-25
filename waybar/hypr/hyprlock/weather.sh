#!/bin/bash

CACHE_DURATION=900 # 15m
CACHE_FILE="$XDG_CACHE_HOME/wttr.in"
FALLBACK_STRING="N/A ️☁️"

if [ -f "$CACHE_FILE" ] && [ $(($(date +%s) - $(stat -c %Y "$CACHE_FILE"))) -lt "$CACHE_DURATION" ]; then
    cat "$CACHE_FILE"
else
    WEATHER=$(curl -s 'wttr.in?format=%t+%c' 2>/dev/null)
    if [ $? -eq 0 ] && [ -n "$WEATHER" ]; then
        echo "$WEATHER" >"$CACHE_FILE"
        echo "$WEATHER"
    else
        # Use cached data if available, otherwise fallback
        if [ -f "$CACHE_FILE" ]; then
            cat "$CACHE_FILE"
        else
            echo "$FALLBACK_STRING"
        fi
    fi
fi
