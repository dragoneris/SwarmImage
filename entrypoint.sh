#!/bin/bash
if [ -d "SwarmUI" ]; then
	./SwarmUI/launch-linux.sh --launch_mode none --host 0.0.0.0
else
	./install-linux.sh --launch_mode none --host 0.0.0.0
fi

exec "$@"
