# Scheme name: Grayscale Dark
# Scheme system: 
# Scheme author: Alexandre Gavioli (https://github.com/Alexx2/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#101010,fg:#b9b9b9,hl:#999999"\
" --color=bg+:#464646,fg+:#,hl+:#"\
" --color=info:#747474,border:#747474,prompt:#8e8e8e"\
" --color=pointer:#686868,marker:#,spinner:#,header:#7c7c7c"
