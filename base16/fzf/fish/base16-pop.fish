# Scheme name: Pop
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
" --color=bg:#000000,fg:#d0d0d0,hl:#f29333"\
" --color=bg+:#303030,fg+:#,hl+:#"\
" --color=info:#b31e8d,border:#b31e8d,prompt:#37b349"\
" --color=pointer:#0e5a94,marker:#,spinner:#,header:#eb008a"
