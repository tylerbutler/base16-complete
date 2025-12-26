# Scheme name: XCode Dusk
# Scheme system: 
# Scheme author: Elsa Gonsiorowski (https://github.com/gonsie)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282B35,fg:#939599,hl:#786DC5"\
" --color=bg+:#53555D,fg+:#,hl+:#"\
" --color=info:#B21889,border:#B21889,prompt:#DF0002"\
" --color=pointer:#790EAD,marker:#,spinner:#,header:#B21889"
