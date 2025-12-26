# Scheme name: Brogrammer
# Scheme system: 
# Scheme author: Vik Ramanujam (http://github.com/piggyslasher)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1f1f1f,fg:#4e5ab7,hl:#de352e"\
" --color=bg+:#2dc55e,fg+:#,hl+:#"\
" --color=info:#0f7ddb,border:#0f7ddb,prompt:#f3bd09"\
" --color=pointer:#5350b9,marker:#,spinner:#,header:#d6dbe5"
