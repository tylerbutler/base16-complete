# Scheme name: Atelier Estuary Light
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
" --color=bg:#f4f3ec,fg:#5f5e4e,hl:#ae7313"\
" --color=bg+:#929181,fg+:#,hl+:#"\
" --color=info:#5f9182,border:#5f9182,prompt:#7d9726"\
" --color=pointer:#36a166,marker:#,spinner:#,header:#ba6236"
