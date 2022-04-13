xrandr --output eDP1 --off --output DP1 --mode 1920x1080 --pos 0x0 --rotate normal --output DP2 --mode 1920x1080 --pos 1963x0 --rotate normal --output HDMI1 --off --output HDMI2 --off --output VIRTUAL1 --off &

#feh --no-fehbg --bg-fill "$HOME/Pictures/macross.png"

while xsetroot -name "RAM: `free | grep Mem | awk '{ printf("%.1f%\n", $3/$2 * 100) }'` | VOL: `pamixer --get-volume-human` | `date +%H:%M:%S` "
do
    sleep 0.28
done &
exec dbus-run-session pulseaudio &
exec dwm
