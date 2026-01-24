# Scheme name: Gigavolt
# Scheme system: 
# Scheme author: Aidan Swope (http://github.com/Whillikers)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#202126,fg:#e9e7e1,hl:#19f988"\
" --color=bg+:#5a576e,fg+:#,hl+:#"\
" --color=info:#ae94f9,border:#ae94f9,prompt:#f2e6a9"\
" --color=pointer:#40bfff,marker:#,spinner:#,header:#ff661a"
