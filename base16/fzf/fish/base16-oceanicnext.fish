# Scheme name: OceanicNext
# Scheme system: 
# Scheme author: https://github.com/voronianski/oceanic-next-color-scheme
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1B2B34,fg:#C0C5CE,hl:#F99157"\
" --color=bg+:#4F5B66,fg+:#,hl+:#"\
" --color=info:#C594C5,border:#C594C5,prompt:#99C794"\
" --color=pointer:#6699CC,marker:#,spinner:#,header:#EC5f67"
