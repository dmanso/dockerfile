#!/bin/sh
set -eou pipefail

while true; do
    /usr/bin/curator --config /config/curator.yml /config/action.yml
    sleep "$INTERVAL"
done
