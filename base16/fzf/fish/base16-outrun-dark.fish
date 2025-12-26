# Scheme name: Outrun Dark
# Scheme system: 
# Scheme author: Hugo Delahousse (http://github.com/hugodelahousse/)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#00002A,fg:#D0D0FA,hl:#FC8D28"\
" --color=bg+:#30305A,fg+:#,hl+:#"\
" --color=info:#F10596,border:#F10596,prompt:#59F176"\
" --color=pointer:#66B0FF,marker:#,spinner:#,header:#FF4242"
