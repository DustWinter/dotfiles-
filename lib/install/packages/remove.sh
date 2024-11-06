# ------------------------------------------------------
# Remove packages
# ------------------------------------------------------
_writeLogHeader "Remove old packages"

# Remove Rofi Calc
_writeLog 0 "Checking for rofi-calc"
if [[ $(_isInstalled "rofi-calc") == 0 ]]; then
    _removePackage "rofi-calc"
    _writeLogTerminal 0 "rofi-calc removed"
    echo
fi

# Remove Rofi
_writeLog 0 "Checking for rofi"
if [[ $(_isInstalled "rofi") == 0 ]]; then
    _removePackage "rofi"
    _writeLogTerminal 0 "rofi removed"
    echo
fi

# Remove Swayidle
_writeLog 0 "Checking for swayidle"
if [[ $(_isInstalled "swayidle") == 0 ]]; then
    _removePackage "swayidle"
    _writeLogTerminal 0 "swayidle removed"
    echo
fi

# Remove Swaylock
_writeLog 0 "Checking for swaylock"
if [[ $(_isInstalled "swaylock-effects-git") == 0 ]]; then
    _removePackage "swaylock-effects-git"
    _writeLogTerminal 0 "swaylock removed"
    echo
fi

# Remove rofi-lbonn-wayland
_writeLog 0 "Checking for rofi-lbonn-wayland"
if [[ $(_isInstalled "rofi-lbonn-wayland") == 0 ]]; then
    _removePackage "rofi-lbonn-wayland"
    _writeLogTerminal 0 "rofi-lbonn-wayland removed"
    echo
fi

# Remove hypridle-bin
_writeLog 0 "Checking for hypridle-git"
if [[ $(_isInstalled "hypridle-git") == 0 ]]; then
    _removePackage "hypridle-git"
    if [ -f /usr/lib/debug/usr/bin/hypridle.debug ] ;then
        sudo rm /usr/lib/debug/usr/bin/hypridle.debug
    _writeLogTerminal 0 "/usr/lib/debug/usr/bin/hypridle.debug removed"
    fi
    _writeLogTerminal 0 "hypridle-git uninstalled."
    _writeLogTerminal 0 "hypridle can now be installed."
    echo 
fi

# Remove hyprlock-bin
_writeLog 0 "Checking for hyprlock-git"
if [[ $(_isInstalled "hyprlock-git") == 0 ]]; then
    _removePackage "hyprlock-git"
    if [ -f /usr/lib/debug/usr/bin/hyprlock.debug ] ;then
        sudo rm /usr/lib/debug/usr/bin/hyprlock.debug
        echo ":: /usr/lib/debug/usr/bin/hyprlock.debug removed"
    fi
    _writeLogTerminal 0 "hyprlock-git uninstalled."
    _writeLogTerminal 0 "hyprlock can now be installed."
    echo
fi

# Remove bibata-cursor-theme
_writeLog 0 "Checking for bibata-cursor-theme"
if [[ $(_isInstalled "bibata-cursor-theme") == 0 ]]; then
    _removePackage "bibata-cursor-theme"
    _writeLogTerminal 0 "bibata-cursor-theme removed"
    echo
fi
