. $HOME/.cache/wal/colors.sh

i3lock\
	--color=${color0}D0\
	--inside{,ver,wrong}-color=#00000000\
  	--line-color=#00000000\
	--ring-color=${color1}20\
	--ringver-color=${color2}\
	--ringwrong-color=${color3}\
	--keyhl-color=${color1}\
	--bshl-color=${color3}\
	--{verif,wrong,modif,layout,time,date,greeter}-color=${color7}\
	--{time,date,layout,greeter}-font="Futura lt:pixelsize=64"\
	--clock\
	--time-pos="ix:iy-300"\
	--{verif,wrong,noinput}-text=""\
	--greeter-text="$1"	
		
		
