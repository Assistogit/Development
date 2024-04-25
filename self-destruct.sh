#!/bin/sh

# Run the command passed as arguments
"$@" &

# Wait for the specified time and then remove the container
timeout $SELF_DESTRUCT_TIMEOUT sleep infinity
docker rm -f $(hostname)

