#! /bin/sh

rofi_cmd() {
	rofi -dmenu \
		-theme ~/.config/rofi/power_menu.rasi
}

chosen=$(printf "⏻  Power off\n󰜉  Reboot\n󰗼  Log out" | rofi_cmd)

case "$chosen" in
	"⏻  Power off") poweroff ;;
	"󰜉  Reboot") reboot ;;
	"󰗼  Log out") bspc quit ;;
	*) exit 1 ;;

esac

