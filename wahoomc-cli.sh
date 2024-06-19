#!/bin/bash

ARGS="$@"

docker run --rm \
    -v "$PWD/data/wahooMapsCreatorData:/root/wahooMapsCreatorData" \
    -v "$PWD:/app" \
    wahoo-maps-creator \
    bash -c "source /opt/pythonenv/wahoomc/bin/activate && cd /app \
        && python3 -m wahoomc cli $ARGS"
