# Scheme name: Framer
# Scheme system: 
# Scheme author: Framer (Maintained by Jesse Hoyos)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#181818,fg:#D0D0D0,hl:#FC4769"\
" --color=bg+:#464646,fg+:#,hl+:#"\
" --color=info:#BA8CFC,border:#BA8CFC,prompt:#32CCDC"\
" --color=pointer:#20BCFC,marker:#,spinner:#,header:#FD886B"
