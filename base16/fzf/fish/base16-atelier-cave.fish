# Scheme name: Atelier Cave
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
" --color=bg:#19171c,fg:#8b8792,hl:#aa573c"\
" --color=bg+:#585260,fg+:#,hl+:#"\
" --color=info:#955ae7,border:#955ae7,prompt:#2a9292"\
" --color=pointer:#576ddb,marker:#,spinner:#,header:#be4678"
