# Scheme name: Ocean
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
" --color=bg:#2b303b,fg:#c0c5ce,hl:#d08770"\
" --color=bg+:#4f5b66,fg+:#,hl+:#"\
" --color=info:#b48ead,border:#b48ead,prompt:#a3be8c"\
" --color=pointer:#8fa1b3,marker:#,spinner:#,header:#bf616a"
