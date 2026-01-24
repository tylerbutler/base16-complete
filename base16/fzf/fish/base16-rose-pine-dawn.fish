# Scheme name: Rosé Pine Dawn
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
" --color=bg:#faf4ed,fg:#575279,hl:#ea9d34"\
" --color=bg+:#f2e9de,fg+:#,hl+:#"\
" --color=info:#ea9d34,border:#ea9d34,prompt:#286983"\
" --color=pointer:#907aa9,marker:#,spinner:#,header:#b4637a"
