# Scheme name: Marrakesh
# Scheme system: 
# Scheme author: Alexandre Gavioli (http://github.com/Alexx2/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#201602,fg:#948e48,hl:#b36144"\
" --color=bg+:#5f5b17,fg+:#,hl+:#"\
" --color=info:#8868b3,border:#8868b3,prompt:#18974e"\
" --color=pointer:#477ca1,marker:#,spinner:#,header:#c35359"
