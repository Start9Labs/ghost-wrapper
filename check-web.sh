#!/bin/sh

DURATION=$(cat /dev/stdin)
if [ "$DURATION" -lt 5000 ]; then
    exit 60
else
    if ! curl --silent --fail ghost.embassy:2368 >/dev/null 2>&1; then
        echo "Web interface is unreachable" >&2
        exit 1
    fi
fi
