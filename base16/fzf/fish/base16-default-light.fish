# Scheme name: Default Light
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
" --color=bg:#f8f8f8,fg:#383838,hl:#dc9656"\
" --color=bg+:#d8d8d8,fg+:#,hl+:#"\
" --color=info:#ba8baf,border:#ba8baf,prompt:#a1b56c"\
" --color=pointer:#7cafc2,marker:#,spinner:#,header:#ab4642"
