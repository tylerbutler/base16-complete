# Scheme name: Porple
# Scheme system: 
# Scheme author: Niek den Breeje (https://github.com/AuditeMarlow)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#292c36,fg:#d8d8d8,hl:#d28e5d"\
" --color=bg+:#474160,fg+:#,hl+:#"\
" --color=info:#b74989,border:#b74989,prompt:#95c76f"\
" --color=pointer:#8485ce,marker:#,spinner:#,header:#f84547"
