include Makefile

TAG_NAME = popbones-$$(date +%Y%m%d-%H%M%S)
TAG_NAME = popbones-dev

build-mac-release:
	cargo build --release -p wezterm -p wezterm-gui -p wezterm-mux-server -p strip-ansi-escapes

bundle: build-mac-release
	TAG_NAME=${TAG_NAME} bash 'ci/deploy.sh'

