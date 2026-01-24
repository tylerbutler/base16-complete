# Scheme name: Github
# Scheme system: 
# Scheme author: Defman21
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#ffffff,fg:#333333,hl:#0086b3"\
" --color=bg+:#c8c8fa,fg+:#,hl+:#"\
" --color=info:#a71d5d,border:#a71d5d,prompt:#183691"\
" --color=pointer:#795da3,marker:#,spinner:#,header:#ed6a43"
