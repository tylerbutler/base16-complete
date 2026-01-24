# Scheme name: Spacemacs
# Scheme system: 
# Scheme author: Nasser Alshammari (https://github.com/nashamri/spacemacs-theme)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1f2022,fg:#a3a3a3,hl:#ffa500"\
" --color=bg+:#444155,fg+:#,hl+:#"\
" --color=info:#a31db1,border:#a31db1,prompt:#67b11d"\
" --color=pointer:#4f97d7,marker:#,spinner:#,header:#f2241f"
