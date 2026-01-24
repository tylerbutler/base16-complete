# Scheme name: Shades of Purple
# Scheme system: 
# Scheme author: Iolar Demartini Junior (http://github.com/demartini) based on Shades of Purple Theme (https://github.com/ahmadawais/shades-of-purple-vscode).
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1e1e3f,fg:#c7c7c7,hl:#f92a1c"\
" --color=bg+:#f1d000,fg+:#,hl+:#"\
" --color=info:#ff2c70,border:#ff2c70,prompt:#3ad900"\
" --color=pointer:#6943ff,marker:#,spinner:#,header:#d90429"
