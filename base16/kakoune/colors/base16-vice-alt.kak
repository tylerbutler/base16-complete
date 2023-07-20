## base16-kakoune (https://github.com/leira/base16-kakoune)
## by Leira Hua
## Vice Alt scheme by Thomas Leon Highbaugh

evaluate-commands %sh{
    base00='rgb:1c1c1c'
    base01='rgb:282828'
    base02='rgb:2c2c2c'
    base03='rgb:323232'
    base04='rgb:3c3c3c'
    base05='rgb:555555'
    base06='rgb:b6b6b6'
    base07='rgb:d1d1d1'
    base08='rgb:ff3d81'
    base09='rgb:F67544'
    base0A='rgb:ffff73'
    base0B='rgb:44ffdd'
    base0C='rgb:00caff'
    base0D='rgb:2fb1d4'
    base0E='rgb:8265ff'
    base0F='rgb:F83D80'

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
