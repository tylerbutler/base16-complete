# Scheme name: OneDark
# Scheme system: 
# Scheme author: Lalit Magant (http://github.com/tilal6991)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282c34,fg:#abb2bf,hl:#d19a66"\
" --color=bg+:#3e4451,fg+:#,hl+:#"\
" --color=info:#c678dd,border:#c678dd,prompt:#98c379"\
" --color=pointer:#61afef,marker:#,spinner:#,header:#e06c75"
