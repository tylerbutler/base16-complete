# Scheme name: Harmonic16 Dark
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
" --color=bg:#0b1c2c,fg:#cbd6e2,hl:#bfbf56"\
" --color=bg+:#405c79,fg+:#,hl+:#"\
" --color=info:#bf568b,border:#bf568b,prompt:#56bf8b"\
" --color=pointer:#8b56bf,marker:#,spinner:#,header:#bf8b56"
