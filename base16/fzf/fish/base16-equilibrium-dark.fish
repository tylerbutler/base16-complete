# Scheme name: Equilibrium Dark
# Scheme system: 
# Scheme author: Carlo Abelli
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#0c1118,fg:#afaba2,hl:#df5923"\
" --color=bg+:#22262d,fg+:#,hl+:#"\
" --color=info:#6a7fd2,border:#6a7fd2,prompt:#7f8b00"\
" --color=pointer:#008dd1,marker:#,spinner:#,header:#f04339"
