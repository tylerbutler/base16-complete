# Scheme name: Atelier Plateau
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
" --color=bg:#1b1818,fg:#8a8585,hl:#b45a3c"\
" --color=bg+:#585050,fg+:#,hl+:#"\
" --color=info:#8464c4,border:#8464c4,prompt:#4b8b8b"\
" --color=pointer:#7272ca,marker:#,spinner:#,header:#ca4949"
