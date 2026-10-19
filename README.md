# SRB2 Spanish Recomp — Linux

Ejecutable de **Sonic Robo Blast 2** recompilado con la traducción al español
integrada en el motor (menús, HUD, mensajes y textos nativos en C), para
**Linux 64-bit**.

Este repositorio contiene **solo el ejecutable y los lanzadores**. Los recursos
del juego (`srb2.pk3`, `zones.pk3`, `music.pk3`, etc.) **no se incluyen**: se
toman de tu instalación normal de SRB2.

## Contenido

| Archivo | Descripción |
|---|---|
| `srb2linux_es` | Ejecutable del motor recompilado (Linux 64-bit) |
| `Jugar_online.sh` | Lanzador con el addon gráfico (compatible online) |
| `Jugar_traducido.sh` | Lanzador con traducción completa |
| `Jugar_vanilla.sh` | Lanzador sin addons (motor vanilla traducido) |
| `addons/srb2_spanish_gfx.pk3` | Glifos Doom Patch para tildes, eñes y signos (á, é, í, ó, ú, ñ, Ñ, ¿, ¡) y gráficos del HUD |

## Requisitos

- Linux 64-bit
- Una instalación de SRB2 v2.2.15 (flatpak, paquete del sistema o `SRB2WADDIR`)
  que aporte los assets base (`srb2.pk3`, `zones.pk3`, `music.pk3`, ...).
- Bibliotecas habituales de SDL2 / SDL2_mixer.

Los lanzadores detectan automáticamente los assets en:

1. El propio directorio del repo (si copias `srb2.pk3` aquí).
2. `SRB2WADDIR` (variable de entorno).
3. Instalación flatpak (`~/.local/share/flatpak` o `/var/lib/flatpak`).
4. `/usr/share/games/SRB2`.

## Cómo jugar

```bash
chmod +x Jugar_*.sh srb2linux_es
./Jugar_online.sh      # modo online (addon gráfico compatible)
./Jugar_traducido.sh   # traducción completa
./Jugar_vanilla.sh     # sin addons
```

Puedes pasar argumentos extra de SRB2, por ejemplo para probar un nivel:

```bash
./Jugar_online.sh -warp 1
```

## Compatibilidad online

El motor traducido **sigue siendo compatible con servidores vanilla**: la
traducción vive en el binario y no impone archivos de sincronización, por lo
que puedes jugar en partidas multijugador normales.

## Notas

- Versión base: SRB2 **v2.2.15** (`SRB2_release_2.2.15`).
- Para compilar desde el código fuente, consulta el repositorio principal del
  proyecto (`SRB2-Spanish-Recomp`).
- SRB2 es software GPL; este repositorio redistribuye el ejecutable derivado.
