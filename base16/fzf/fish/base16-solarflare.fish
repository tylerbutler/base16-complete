# Scheme name: Solar Flare
# Scheme system: 
# Scheme author: Chuck Harmston (https://chuck.harmston.ch)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#18262F,fg:#A6AFB8,hl:#E66B2B"\
" --color=bg+:#586875,fg+:#,hl+:#"\
" --color=info:#A363D5,border:#A363D5,prompt:#7CC844"\
" --color=pointer:#33B5E1,marker:#,spinner:#,header:#EF5253"
