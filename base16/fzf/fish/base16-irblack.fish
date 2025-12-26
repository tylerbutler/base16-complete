# Scheme name: IR Black
# Scheme system: 
# Scheme author: Timothée Poisot (http://timotheepoisot.fr)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#000000,fg:#b5b3aa,hl:#e9c062"\
" --color=bg+:#484844,fg+:#,hl+:#"\
" --color=info:#ff73fd,border:#ff73fd,prompt:#a8ff60"\
" --color=pointer:#96cbfe,marker:#,spinner:#,header:#ff6c60"
