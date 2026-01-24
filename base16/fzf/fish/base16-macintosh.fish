# Scheme name: Macintosh
# Scheme system: 
# Scheme author: Rebecca Bettencourt (http://www.kreativekorp.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#c0c0c0,hl:#ff6403"\
" --color=bg+:#404040,fg+:#,hl+:#"\
" --color=info:#4700a5,border:#4700a5,prompt:#1fb714"\
" --color=pointer:#0000d3,marker:#,spinner:#,header:#dd0907"
