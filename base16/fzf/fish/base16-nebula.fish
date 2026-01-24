# Scheme name: Nebula
# Scheme system: 
# Scheme author: Gabriel Fontes (https://github.com/Misterio77)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#22273b,fg:#a4a6a9,hl:#94929e"\
" --color=bg+:#5a8380,fg+:#,hl+:#"\
" --color=info:#716cae,border:#716cae,prompt:#6562a8"\
" --color=pointer:#4d6bb6,marker:#,spinner:#,header:#777abc"
