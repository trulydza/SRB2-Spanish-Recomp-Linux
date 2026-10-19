#!/usr/bin/env bash
# SRB2 Spanish Recomp - Modo Online (con parches gráficos compatibles)
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

# Ubicación del addon gráfico
ADDON=""
if [ -f "$DIR/addons/srb2_spanish_gfx.pk3" ]; then
    ADDON="$DIR/addons/srb2_spanish_gfx.pk3"
elif [ -f "$DIR/dist/addons/srb2_spanish_gfx.pk3" ]; then
    ADDON="$DIR/dist/addons/srb2_spanish_gfx.pk3"
fi

cd "$DIR"
if [ -n "$ADDON" ]; then
    exec "$DIR/srb2linux_es" -file "$ADDON" "$@"
else
    exec "$DIR/srb2linux_es" "$@"
fi
