# Scheme name: Tango
# Scheme system: 
# Scheme author: @Schnouki, based on the Tango Desktop Project
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2e3436,fg:#d3d7cf,hl:#ef2929"\
" --color=bg+:#fce94f,fg+:#,hl+:#"\
" --color=info:#75507b,border:#75507b,prompt:#4e9a06"\
" --color=pointer:#3465a4,marker:#,spinner:#,header:#cc0000"
