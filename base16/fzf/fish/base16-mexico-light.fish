# Scheme name: Mexico Light
# Scheme system: 
# Scheme author: Sheldon Johnson
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#f8f8f8,fg:#383838,hl:#dc9656"\
" --color=bg+:#d8d8d8,fg+:#,hl+:#"\
" --color=info:#96609e,border:#96609e,prompt:#538947"\
" --color=pointer:#7cafc2,marker:#,spinner:#,header:#ab4642"
