# Scheme name: Mellow Purple
# Scheme system: 
# Scheme author: gidsi
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1e0528,fg:#ffeeff,hl:#aa00a3"\
" --color=bg+:#331354,fg+:#,hl+:#"\
" --color=info:#8991bb,border:#8991bb,prompt:#05cb0d"\
" --color=pointer:#550068,marker:#,spinner:#,header:#00d9e9"
