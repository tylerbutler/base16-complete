# Scheme name: Unikitty Dark
# Scheme system: 
# Scheme author: Josh W Lewis (@joshwlewis)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2e2a31,fg:#bcbabe,hl:#d65407"\
" --color=bg+:#666369,fg+:#,hl+:#"\
" --color=info:#bb60ea,border:#bb60ea,prompt:#17ad98"\
" --color=pointer:#796af5,marker:#,spinner:#,header:#d8137f"
