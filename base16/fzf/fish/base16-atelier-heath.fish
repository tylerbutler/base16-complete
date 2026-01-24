# Scheme name: Atelier Heath
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
" --color=bg:#1b181b,fg:#ab9bab,hl:#a65926"\
" --color=bg+:#695d69,fg+:#,hl+:#"\
" --color=info:#7b59c0,border:#7b59c0,prompt:#918b3b"\
" --color=pointer:#516aec,marker:#,spinner:#,header:#ca402b"
