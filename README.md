# SRB2 en español para Linux (recompilación v2.2.15)

Traducción al español de Sonic Robo Blast 2 hecha directamente en el código C del juego, sobre la versión 2.2.15, empaquetada para **Linux 64-bit**.

Los textos están dentro del ejecutable, no en un addon de Lua o SOC. Por eso se puede entrar a servidores vanilla sin que el juego pida cargar archivos extra. Además se incluye un pk3 opcional con gráficos y fuentes traducidos (`srb2_spanish_gfx.pk3`), que es solo cosmético.

Este repositorio contiene **solo el ejecutable y los lanzadores**. Los recursos del juego (`srb2.pk3`, `zones.pk3`, `music.pk3`, `characters.pk3`, ...) no se incluyen: se toman de tu instalación normal de SRB2.

## Contenido

| Archivo | Descripción |
|---|---|
| `srb2linux_es` | Ejecutable del motor recompilado (Linux 64-bit) |
| `Jugar_online.sh` | **Lanzador en uso**: textos + addon gráfico (compatible online) |
| `Jugar_traducido.sh` | Legado — ya no se usa |
| `Jugar_vanilla.sh` | Legado — ya no se usa |
| `addons/srb2_spanish_gfx.pk3` | Glifos Doom Patch para tildes, eñes y signos, y gráficos del HUD |

> **Aviso:** actualmente el proyecto se trabaja y soporta **únicamente con `Jugar_online.sh`**. Los lanzadores `Jugar_traducido.sh` y `Jugar_vanilla.sh` quedan como legado.

## Qué está traducido

- Menús: principal, video, audio, controles, partidas guardadas, estadísticas y Caja de Pandora.
- HUD y partida: puntos, tiempo, anillos, mensajes en pantalla, modo espectador y tiempo extra.
- Nombres de las 66 zonas vanilla y de las etapas especiales, con sus acentos (*Cañón Árido*, *Montaña Gélida*, *Volcán*...).
- Tutorial completo: las 51 páginas de diálogo de Amy Rose y todos los carteles del mapa.
- Los 7 personajes vanilla: descripciones, habilidades y consejos.
- Intro completa (las 16 páginas), créditos y las frases al salir del juego.
- Tildes, eñes y signos en las fuentes LTFNT y STCFN. Los glifos vienen en el pk3 de gráficos; sin él, el juego usa un fallback automático.

Los valores de las variables de consola (On/Off, Yes/No) se dejan en inglés a propósito.

## Instalación

Descarga desde [Releases](https://github.com/trulydza/SRB2-Spanish-Recomp-Linux/releases):

- `SRB2_Spanish_Recomp_Linux_v2.2.15.tar.gz`
- `srb2_spanish_gfx.pk3`

Extrae el `tar.gz` en una carpeta (por ejemplo `SRB2 Español`) y copia ahí desde tu juego original `srb2.pk3`, `zones.pk3`, `characters.pk3` y `music.pk3`. El pk3 de gráficos ya viene dentro de `addons/`; si lo descargaste aparte, ponlo en esa misma carpeta.

Alternativamente, clona el repositorio y copia los assets junto al ejecutable:

```bash
git clone https://github.com/trulydza/SRB2-Spanish-Recomp-Linux
cd SRB2-Spanish-Recomp-Linux
```

Los lanzadores detectan automáticamente los assets en el directorio local, en `SRB2WADDIR` o en una instalación de SRB2 del sistema (flatpak o paquete), así que también puedes usarlos sin copiar nada.

## Cómo jugar

Solo se usa `Jugar_online.sh`:

```bash
chmod +x Jugar_online.sh srb2linux_es
./Jugar_online.sh      # textos + gráficos traducidos; sirve en solitario y en servidores
```

Los lanzadores `Jugar_traducido.sh` y `Jugar_vanilla.sh` quedan como legado y ya no se utilizan.

Puedes pasar argumentos extra de SRB2, por ejemplo para probar un nivel:

```bash
./Jugar_online.sh -warp 1
```

## Compatibilidad online

El motor traducido sigue siendo compatible con servidores vanilla: la traducción vive en el binario y no impone archivos de sincronización, por lo que puedes jugar en partidas multijugador normales.

## Compilar y documentación técnica

La arquitectura, las reglas de traducción, el historial de lotes, los pasos para compilar y la lista de tareas pendientes están en el repositorio principal: [`SRB2-Spanish-Recomp`](https://github.com/trulydza/SRB2-Spanish-Recomp).

Compilación en Linux (desde `SRB2/src/`):

```bash
make LINUX64=1 NOUPX=1 -j$(nproc)
```

El ejecutable resultante es `SRB2/bin/lsdl2srb2`.

## Créditos

- Traducción y adaptación: Daza ([@trulydza](https://github.com/trulydza))
- Juego base: Sonic Team Junior ([STJr/SRB2](https://github.com/STJr/SRB2))

Licencia GPL-2.0, igual que el juego original.
