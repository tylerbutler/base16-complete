# Scheme name: Darcula
# Scheme system: 
# Scheme author: jetbrains
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2b2b2b,fg:#a9b7c6,hl:#689757"\
" --color=bg+:#323232,fg+:#,hl+:#"\
" --color=info:#cc7832,border:#cc7832,prompt:#6a8759"\
" --color=pointer:#9876aa,marker:#,spinner:#,header:#4eade5"
