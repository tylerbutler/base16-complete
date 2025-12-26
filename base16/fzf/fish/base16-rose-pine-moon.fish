# Scheme name: Rosé Pine Moon
# Scheme system: 
# Scheme author: Emilia Dunfelt &lt;edun@dunfelt.se&gt;
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#232136,fg:#e0def4,hl:#f6c177"\
" --color=bg+:#393552,fg+:#,hl+:#"\
" --color=info:#f6c177,border:#f6c177,prompt:#3e8fb0"\
" --color=pointer:#c4a7e7,marker:#,spinner:#,header:#eb6f92"
