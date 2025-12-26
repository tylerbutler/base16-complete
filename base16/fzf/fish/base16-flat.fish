# Scheme name: Flat
# Scheme system: 
# Scheme author: Chris Kempson (http://chriskempson.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#2C3E50,fg:#e0e0e0,hl:#E67E22"\
" --color=bg+:#7F8C8D,fg+:#,hl+:#"\
" --color=info:#9B59B6,border:#9B59B6,prompt:#2ECC71"\
" --color=pointer:#3498DB,marker:#,spinner:#,header:#E74C3C"
