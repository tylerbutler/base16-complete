# Scheme name: Unikitty Light
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
" --color=bg:#ffffff,fg:#6c696e,hl:#d65407"\
" --color=bg+:#c4c3c5,fg+:#,hl+:#"\
" --color=info:#aa17e6,border:#aa17e6,prompt:#17ad98"\
" --color=pointer:#775dff,marker:#,spinner:#,header:#d8137f"
