# Scheme name: Atelier Seaside
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
" --color=bg:#131513,fg:#8ca68c,hl:#87711d"\
" --color=bg+:#5e6e5e,fg+:#,hl+:#"\
" --color=info:#ad2bee,border:#ad2bee,prompt:#29a329"\
" --color=pointer:#3d62f5,marker:#,spinner:#,header:#e6193c"
