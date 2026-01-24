# Scheme name: Atelier Seaside Light
# Scheme system: 
# Scheme author: Bram de Haan (http://atelierbramdehaan.nl)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f4fbf4,fg:#5e6e5e,hl:#87711d"\
" --color=bg+:#8ca68c,fg+:#,hl+:#"\
" --color=info:#ad2bee,border:#ad2bee,prompt:#29a329"\
" --color=pointer:#3d62f5,marker:#,spinner:#,header:#e6193c"
