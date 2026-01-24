# Scheme name: dirtysea
# Scheme system: 
# Scheme author: Kahlil (Kal) Hodgson
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#e0e0e0,fg:#000000,hl:#006565"\
" --color=bg+:#d0d0d0,fg+:#,hl+:#"\
" --color=info:#000090,border:#000090,prompt:#730073"\
" --color=pointer:#007300,marker:#,spinner:#,header:#840000"
