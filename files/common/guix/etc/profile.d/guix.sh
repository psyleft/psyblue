# Set fallback directories
[ -z "$XDG_DATA_DIRS"   ] && export XDG_DATA_DIRS="/usr/local/share:/usr/share"
[ -z "$XDG_CONFIG_DIRS" ] && export XDG_CONFIG_DIRS="/etc/xdg"
[ -z "$XCURSOR_PATH"    ] && export XCURSOR_PATH="/usr/share/icons"

# Source user's current guix and guix profile
GUIX_PROFILE="$HOME/.config/guix/current"
if [ -L "$GUIX_PROFILE" ]; then
    export PATH="$GUIX_PROFILE/bin${PATH:+:}$PATH"
    export INFOPATH="$GUIX_PROFILE/share/info:${INFOPATH:+:}$INFOPATH"
fi

GUIX_PROFILE="$HOME/.guix-profile"
if [ -L "$GUIX_PROFILE" ]; then
    . "$GUIX_PROFILE/etc/profile"
fi

unset GUIX_PROFILE
