# Scheme name: PhD
# Scheme system: 
# Scheme author: Hennig Hasemann (http://leetless.de/vim.html)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#061229,fg:#b8bbc2,hl:#f0a000"\
" --color=bg+:#4d5666,fg+:#,hl+:#"\
" --color=info:#9989cc,border:#9989cc,prompt:#99bf52"\
" --color=pointer:#5299bf,marker:#,spinner:#,header:#d07346"
