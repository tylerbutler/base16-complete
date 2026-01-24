# Scheme name: Equilibrium Gray Dark
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
" --color=bg:#111111,fg:#ababab,hl:#df5923"\
" --color=bg+:#262626,fg+:#,hl+:#"\
" --color=info:#6a7fd2,border:#6a7fd2,prompt:#7f8b00"\
" --color=pointer:#008dd1,marker:#,spinner:#,header:#f04339"
