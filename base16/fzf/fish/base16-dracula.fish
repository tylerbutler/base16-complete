# Scheme name: Dracula
# Scheme system: 
# Scheme author: Mike Barkmin (http://github.com/mikebarkmin) based on Dracula Theme (http://github.com/dracula)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#282936,fg:#e9e9f4,hl:#b45bcf"\
" --color=bg+:#4d4f68,fg+:#,hl+:#"\
" --color=info:#b45bcf,border:#b45bcf,prompt:#ebff87"\
" --color=pointer:#62d6e8,marker:#,spinner:#,header:#ea51b2"
