## base16-kakoune (https://github.com/leira/base16-kakoune)
## by Leira Hua
## Porple scheme by Niek den Breeje (https://github.com/AuditeMarlow)

evaluate-commands %sh{
    base00='rgb:292c36'
    base01='rgb:333344'
    base02='rgb:474160'
    base03='rgb:65568a'
    base04='rgb:b8b8b8'
    base05='rgb:d8d8d8'
    base06='rgb:e8e8e8'
    base07='rgb:f8f8f8'
    base08='rgb:f84547'
    base09='rgb:d28e5d'
    base0A='rgb:efa16b'
    base0B='rgb:95c76f'
    base0C='rgb:64878f'
    base0D='rgb:8485ce'
    base0E='rgb:b74989'
    base0F='rgb:986841'

    ## code
    echo "
        face global value ${base09}
        face global type ${base0A}+b
        face global identifier ${base08}
        face global string ${base0B}
        face global keyword ${base0E}+b
        face global operator ${base05}
        face global attribute ${base0C}
        face global comment ${base03}
        face global meta ${base0D}
        face global builtin ${base0D}+b
    "

    ## markup
    echo "
        face global title ${base0D}+b
        face global header ${base0D}+b
        face global bold ${base0A}+b
        face global italic ${base0E}
        face global mono ${base0B}
        face global block ${base0C}
        face global link ${base09}
        face global bullet ${base08}
        face global list ${base08}
    "

    ## builtin
    echo "
        face global Default ${base05},${base00}
        face global PrimarySelection ${base06},${base0D}
        face global SecondarySelection ${base06},${base0F}
        face global PrimaryCursor ${base00},${base05}
        face global SecondaryCursor ${base06},${base0C}
        face global LineNumbers ${base02},${base00}
        face global LineNumberCursor ${base0A},${base00}
        face global MenuForeground ${base00},${base0D}
        face global MenuBackground ${base00},${base0C}
        face global MenuInfo ${base02}
        face global Information ${base00},${base0A}
        face global Error ${base00},${base08}
        face global StatusLine ${base04},${base01}
        face global StatusLineMode ${base0B}
        face global StatusLineInfo ${base0D}
        face global StatusLineValue ${base0C}
        face global StatusCursor ${base00},${base05}
        face global Prompt ${base0D},${base01}
        face global MatchingChar ${base06},${base02}+b
        face global BufferPadding ${base03},${base00}
    "
}
