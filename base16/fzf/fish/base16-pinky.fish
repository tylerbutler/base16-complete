# Scheme name: pinky
# Scheme system: 
# Scheme author: Benjamin (https://github.com/b3nj5m1n)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#171517,fg:#f5f5f5,hl:#00ff66"\
" --color=bg+:#1d1b1d,fg+:#,hl+:#"\
" --color=info:#007fff,border:#007fff,prompt:#ff0066"\
" --color=pointer:#00ffff,marker:#,spinner:#,header:#ffa600"
