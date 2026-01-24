# Scheme name: Codeschool
# Scheme system: 
# Scheme author: blockloop
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#232c31,fg:#9ea7a6,hl:#43820d"\
" --color=bg+:#2a343a,fg+:#,hl+:#"\
" --color=info:#c59820,border:#c59820,prompt:#237986"\
" --color=pointer:#484d79,marker:#,spinner:#,header:#2a5491"
