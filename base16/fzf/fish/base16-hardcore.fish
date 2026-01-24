# Scheme name: Hardcore
# Scheme system: 
# Scheme author: Chris Caller
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#212121,fg:#cdcdcd,hl:#fd971f"\
" --color=bg+:#353535,fg+:#,hl+:#"\
" --color=info:#9e6ffe,border:#9e6ffe,prompt:#a6e22e"\
" --color=pointer:#66d9ef,marker:#,spinner:#,header:#f92672"
