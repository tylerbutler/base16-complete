# Scheme name: Green Screen
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
" --color=bg:#001100,fg:#00bb00,hl:#009900"\
" --color=bg+:#005500,fg+:#,hl+:#"\
" --color=info:#00bb00,border:#00bb00,prompt:#00bb00"\
" --color=pointer:#009900,marker:#,spinner:#,header:#007700"
