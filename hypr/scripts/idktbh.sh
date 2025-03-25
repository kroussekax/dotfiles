swaymsg "workspace 1; exec zen-browser"
sleep 1
swaymsg "workspace 2; exec kitty"
sleep 0.5
swaymsg "workspace 3; exec flatpak run com.spotify.Client"
