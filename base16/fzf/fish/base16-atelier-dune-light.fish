# Scheme name: Atelier Dune Light
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
" --color=bg:#fefbec,fg:#6e6b5e,hl:#b65611"\
" --color=bg+:#a6a28c,fg+:#,hl+:#"\
" --color=info:#b854d4,border:#b854d4,prompt:#60ac39"\
" --color=pointer:#6684e1,marker:#,spinner:#,header:#d73737"
