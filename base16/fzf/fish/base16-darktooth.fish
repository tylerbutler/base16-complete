# Scheme name: Darktooth
# Scheme system: 
# Scheme author: Jason Milkins (https://github.com/jasonm23)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1D2021,fg:#A89984,hl:#FE8625"\
" --color=bg+:#504945,fg+:#,hl+:#"\
" --color=info:#8F4673,border:#8F4673,prompt:#95C085"\
" --color=pointer:#0D6678,marker:#,spinner:#,header:#FB543F"
