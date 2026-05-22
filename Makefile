install:
	bash scripts/make-links.sh

dependencies-dnf:
	sudo dnf install -y niri niri-settings fuzzel xdg-desktop-portal-gtk xdg-desktop-portal-gnome pavucontrol swaybg swayidle swaync network-manager-applet brightnessctl blueman grim slurp swappy

copy:
	bash scripts/copy-examples.sh

update-waybar:
	killall -SIGUSR2 waybar

update-swaync:
	swaync-client -R && swaync-client -rs
