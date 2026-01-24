# Scheme name: vulcan
# Scheme system: 
# Scheme author: Andrey Varfolomeev
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#041523,fg:#5b778c,hl:#9198a3"\
" --color=bg+:#003552,fg+:#,hl+:#"\
" --color=info:#9198a3,border:#9198a3,prompt:#977d7c"\
" --color=pointer:#977d7c,marker:#,spinner:#,header:#818591"
