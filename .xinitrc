~/.fehbg &
xrdb ~/.cache/wal/colors.Xresources
xrdb -merge ~/.Xresources 
# -R restores the last colorscheme that was in use.
wal -R
exec i3


