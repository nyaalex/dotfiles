# dotfiles
My dotfiles and config options

alacritty doesn't update automatically with `wal` on its own after restarting alacritty, you need to use another script

so the wallpaper changes hourly using `cron` running the script `.config/wallpapers/wallpaperSetter.sh`, my cron looks like this:
`0 * * * * ~/.config/wallpapers/wallpaperSetter.sh >> ~/.config/wallpapers/wallpaperSetter.log 2>&1`
