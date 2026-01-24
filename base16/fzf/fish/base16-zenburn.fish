# Scheme name: Zenburn
# Scheme system: 
# Scheme author: elnawe
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#383838,fg:#dcdccc,hl:#dfaf8f"\
" --color=bg+:#606060,fg+:#,hl+:#"\
" --color=info:#dc8cc3,border:#dc8cc3,prompt:#5f7f5f"\
" --color=pointer:#7cb8bb,marker:#,spinner:#,header:#dca3a3"
