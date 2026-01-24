# Scheme name: Railscasts
# Scheme system: 
# Scheme author: Ryan Bates (http://railscasts.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2b2b2b,fg:#e6e1dc,hl:#cc7833"\
" --color=bg+:#3a4055,fg+:#,hl+:#"\
" --color=info:#b6b3eb,border:#b6b3eb,prompt:#a5c261"\
" --color=pointer:#6d9cbe,marker:#,spinner:#,header:#da4939"
