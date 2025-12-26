# Scheme name: Atelier Lakeside
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
" --color=bg:#161b1d,fg:#7ea2b4,hl:#935c25"\
" --color=bg+:#516d7b,fg+:#,hl+:#"\
" --color=info:#6b6bb8,border:#6b6bb8,prompt:#568c3b"\
" --color=pointer:#257fad,marker:#,spinner:#,header:#d22d72"
