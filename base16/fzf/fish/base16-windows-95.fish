# Scheme name: Windows 95
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
" --color=bg:#000000,fg:#a8a8a8,hl:#a85400"\
" --color=bg+:#383838,fg+:#,hl+:#"\
" --color=info:#fc54fc,border:#fc54fc,prompt:#54fc54"\
" --color=pointer:#5454fc,marker:#,spinner:#,header:#fc5454"
