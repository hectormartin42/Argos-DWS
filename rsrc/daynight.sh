#!/bin/bash

gsk1="org.gnome.desktop.interface gtk-theme"
gsk2="org.gnome.desktop.wm.preferences theme"
gsc=$(gsettings get $gsk1)

# Disable the two wget lines if you want to keep your current terminal theme
if [ "$gsc" == "'Adwaita'" ]
then
gsettings set $gsk1 'Adwaita-dark' && gsettings set $gsk2 'Adwaita-dark'
wget -qO- https://raw.githubusercontent.com/DarthWound/flatui-gnome-terminal/master/flatuidark-gt.sh | sh
elif [ "$gsc" == "'Adwaita-dark'" ]
then
gsettings set $gsk1 'Adwaita' && gsettings set $gsk2 'Adwaita'
wget -qO- https://raw.githubusercontent.com/DarthWound/flatui-gnome-terminal/master/flatuilight-gt.sh | sh
fi

# Adapta (https://github.com/adapta-project/adapta-gtk-theme)
#if [ "$gsc" == "'Adapta'" ]
#then
#gsettings set $gsk1 'Adapta-Nokto' && gsettings set $gsk2 'Adapta-Nokto'
#elif [ "$gsc" == "'Adapta-Nokto'" ]
#then
#gsettings set $gsk1 'Adapta' && gsettings set $gsk2 'Adapta'
#fi

# Adapta Eta (https://github.com/adapta-project/adapta-gtk-theme)
#if [ "$gsc" == "'Adapta-Eta'" ]
#then
#gsettings set $gsk1 'Adapta-Nokto-Eta' && gsettings set $gsk2 'Adapta-Nokto-Eta'
#elif [ "$gsc" == "'Adapta-Nokto-Eta'" ]
#then
#gsettings set $gsk1 'Adapta-Eta' && gsettings set $gsk2 'Adapta-Eta'
#fi

# Arc (https://github.com/horst3180/Arc-theme)
#if [ "$gsc" == "'Arc'" ]
#then
#gsettings set $gsk1 'Arc-Dark' && gsettings set $gsk2 'Arc-Dark'
#elif [ "$gsc" == "'Arc-Dark'" ]
#then
#gsettings set $gsk1 'Arc' && gsettings set $gsk2 'Arc'
#fi

# Geeko (https://github.com/LelCP/geeko-gtk-theme)
#if [ "$gsc" == "'Geeko'" ]
#then
#gsettings set $gsk1 'Geeko-Dark' && gsettings set $gsk2 'Geeko-Dark'
#elif [ "$gsc" == "'Geeko-Dark'" ]
#then
#gsettings set $gsk1 'Geeko' && gsettings set $gsk2 'Geeko'
#fi

# Materia (https://github.com/nana-4/materia-theme)
#if [ "$gsc" == "'Materia-light'" ]
#then
#gsettings set $gsk1 'Materia-dark' && gsettings set $gsk2 'Materia-dark'
#elif [ "$gsc" == "'Materia-dark'" ]
#then
#gsettings set $gsk1 'Materia-light' && gsettings set $gsk2 'Materia-light'
#fi

# Materia Compact (https://github.com/nana-4/materia-theme)
#if [ "$gsc" == "'Materia-light-compact'" ]
#then
#gsettings set $gsk1 'Materia-dark-compact' && gsettings set $gsk2 'Materia-dark-compact'
#elif [ "$gsc" == "'Materia-dark-compact'" ]
#then
#gsettings set $gsk1 'Materia-light-compact' && gsettings set $gsk2 'Materia-light-compact'
#fi
