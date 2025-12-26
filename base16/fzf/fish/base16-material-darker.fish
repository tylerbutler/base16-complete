# Scheme name: Material Darker
# Scheme system: 
# Scheme author: Nate Peterson
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#212121,fg:#EEFFFF,hl:#F78C6C"\
" --color=bg+:#353535,fg+:#,hl+:#"\
" --color=info:#C792EA,border:#C792EA,prompt:#C3E88D"\
" --color=pointer:#82AAFF,marker:#,spinner:#,header:#F07178"
