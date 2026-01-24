# Scheme name: Nova
# Scheme system: 
# Scheme author: George Essig (https://github.com/gessig), Trevor D. Miller (https://trevordmiller.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#3C4C55,fg:#C5D4DD,hl:#7FC1CA"\
" --color=bg+:#6A7D89,fg+:#,hl+:#"\
" --color=info:#9A93E1,border:#9A93E1,prompt:#7FC1CA"\
" --color=pointer:#83AFE5,marker:#,spinner:#,header:#83AFE5"
