# Scheme name: Eighties
# Scheme system: 
# Scheme author: Chris Kempson (http://chriskempson.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2d2d2d,fg:#d3d0c8,hl:#f99157"\
" --color=bg+:#515151,fg+:#,hl+:#"\
" --color=info:#cc99cc,border:#cc99cc,prompt:#99cc99"\
" --color=pointer:#6699cc,marker:#,spinner:#,header:#f2777a"
