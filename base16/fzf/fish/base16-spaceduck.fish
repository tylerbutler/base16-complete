# Scheme name: Spaceduck
# Scheme system: 
# Scheme author: Guillermo Rodriguez (pineapplegiant)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#686f9a,hl:#e33400"\
" --color=bg+:#b3a1e6,fg+:#,hl+:#"\
" --color=info:#f2ce00,border:#f2ce00,prompt:#5ccc96"\
" --color=pointer:#00a3cc,marker:#,spinner:#,header:#e33400"
