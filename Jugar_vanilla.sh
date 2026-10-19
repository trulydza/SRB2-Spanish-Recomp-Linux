#!/usr/bin/env bash
# SRB2 Spanish Recomp - Modo Vanilla
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Detección inteligente de assets si no están en el directorio local
if [ ! -f "$DIR/srb2.pk3" ] && [ -z "$SRB2WADDIR" ]; then
    if [ -f "$DIR/dist/srb2.pk3" ]; then
        export SRB2WADDIR="$DIR/dist"
    elif [ -d "/var/lib/flatpak/app/org.srb2.SRB2/current/active/files/share/games/srb2" ]; then
        export SRB2WADDIR="/var/lib/flatpak/app/org.srb2.SRB2/current/active/files/share/games/srb2"
    elif [ -d "$HOME/.local/share/flatpak/app/org.srb2.SRB2/current/active/files/share/games/srb2" ]; then
        export SRB2WADDIR="$HOME/.local/share/flatpak/app/org.srb2.SRB2/current/active/files/share/games/srb2"
    elif [ -d "/usr/share/games/SRB2" ]; then
        export SRB2WADDIR="/usr/share/games/SRB2"
    fi
fi

cd "$DIR"
exec "$DIR/srb2linux_es" "$@"
