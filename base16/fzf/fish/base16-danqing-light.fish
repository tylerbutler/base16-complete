# Scheme name: DanQing Light
# Scheme system: 
# Scheme author: Wenhan Zhu (Cosmos) (zhuwenhan950913@gmail.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#fcfefd,fg:#5a605d,hl:#B38A61"\
" --color=bg+:#e0f0eF,fg+:#,hl+:#"\
" --color=info:#CCA4E3,border:#CCA4E3,prompt:#8AB361"\
" --color=pointer:#B0A4E3,marker:#,spinner:#,header:#F9906F"
