# Scheme name: Ashes
# Scheme system: 
# Scheme author: Jannik Siebert (https://github.com/janniks)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1C2023,fg:#C7CCD1,hl:#C7C795"\
" --color=bg+:#565E65,fg+:#,hl+:#"\
" --color=info:#C795AE,border:#C795AE,prompt:#95C7AE"\
" --color=pointer:#AE95C7,marker:#,spinner:#,header:#C7AE95"
