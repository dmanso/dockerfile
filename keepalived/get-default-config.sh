#!/bin/bash
mkdir -p config.orig
docker run --rm --entrypoint tar keepalived cz -C /default . | sudo tar xz -C config.orig
