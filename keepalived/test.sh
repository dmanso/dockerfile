#!/bin/bash
docker run --rm -ti \
	--net=host --cap-add=NET_ADMIN \
	-v $(pwd)/config:/config:ro \
	--read-only --tmpfs /run \
	keepalived
