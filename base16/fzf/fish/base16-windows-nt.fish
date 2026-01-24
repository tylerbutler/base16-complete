# Scheme name: Windows NT
# Scheme system: 
# Scheme author: Fergus Collins (https://github.com/C-Fergus)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#c0c0c0,hl:#808000"\
" --color=bg+:#555555,fg+:#,hl+:#"\
" --color=info:#ff00ff,border:#ff00ff,prompt:#00ff00"\
" --color=pointer:#0000ff,marker:#,spinner:#,header:#ff0000"
