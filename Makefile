.PHONY: script dependencies

install:
	bash scripts/make-links.sh

dependencies-dnf:
	sudo dnf install -y niri niri-settings fuzzel xdg-desktop-portal-gtk xdg-desktop-portal-gnome pavucontrol swaybg swayidle swaync network-manager-applet brightnessctl blueman

copy:
	bash scripts/copy-examples.sh
