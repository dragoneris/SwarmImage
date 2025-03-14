#!/bin/bash
if [ -d "SwarmUI" ]; then
	if [ -d "SwarmUI/dlbackend/ComfyUI/custom_nodes/ComfyUI-Manager" ]; then
		./SwarmUI/launch-linux.sh --launch_mode none --host 0.0.0.0
	else
		# Install ComfyUI-Manager
		git clone https://github.com/ltdrdata/ComfyUI-Manager/ "SwarmUI/dlbackend/ComfyUI/custom_nodes/ComfyUI-Manager"

		# Grab autocomplete files
		wget -O SwarmUI/Data/Autocompletions/danbooru.csv https://raw.githubusercontent.com/DominikDoom/a1111-sd-webui-tagcomplete/refs/heads/main/tags/danbooru.csv
		wget -O SwarmUI/Data/Autocompletions/e621.csv https://raw.githubusercontent.com/DominikDoom/a1111-sd-webui-tagcomplete/refs/heads/main/tags/e621.csv 
		wget -O SwarmUI/Data/Autocompletions/danbooru_e621_merged.csv https://raw.githubusercontent.com/DominikDoom/a1111-sd-webui-tagcomplete/refs/heads/main/tags/danbooru_e621_merged.csv 

		./SwarmUI/launch-linux.sh --launch_mode none --host 0.0.0.0
	fi
else
	./install-linux.sh --launch_mode none --host 0.0.0.0
fi

exec "$@"
