# dotfiles
My dotfiles and config options

so the wallpaper changes hourly using `cron` running the script `.config/wallpapers/wallpaperSetter.sh`, my cron looks like this:
`0 * * * * ~/.config/wallpapers/wallpaperSetter.sh >> ~/.config/wallpapers/wallpaperSetter.log 2>&1`

additionally the `.config/wallpapers` should have a folder called `main`, this is the dir it will read the wallpapers from, each file needs to be titled `hourHH.png` where `HH` is the hour from 00 to 23, also if the hourly wallpaper isn't found it tries to set the wallpaper `.config/wallpapers/default.png`


## Software Used

 - [alacritty](https://github.com/alacritty/alacritty)
 - [dunst](https://github.com/dunst-project/dunst)
 - [i3-gaps](https://github.com/Airblader/i3)
 - [i3lock-color](https://github.com/Raymo111/i3lock-color)
 - [polybar](https://polybar.github.io/)
 - [picom](https://github.com/yshui/picom)
 - [pywal](https://github.com/dylanaraps/pywal)
 - [rofi](https://github.com/davatorium/rofi)
 - [wpgtk](https://github.com/deviantfero/wpgtk)
 
For the rofi configs I used a modified version of [this collection](https://github.com/adi1090x/rofi) of themes.
 