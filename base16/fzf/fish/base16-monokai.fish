# Scheme name: Monokai
# Scheme system: 
# Scheme author: Wimer Hazenberg (http://www.monokai.nl)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#272822,fg:#f8f8f2,hl:#fd971f"\
" --color=bg+:#49483e,fg+:#,hl+:#"\
" --color=info:#ae81ff,border:#ae81ff,prompt:#a6e22e"\
" --color=pointer:#66d9ef,marker:#,spinner:#,header:#f92672"
