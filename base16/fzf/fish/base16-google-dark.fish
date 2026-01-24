# Scheme name: Google Dark
# Scheme system: 
# Scheme author: Seth Wright (http://sethawright.com)
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#1d1f21,fg:#c5c8c6,hl:#F96A38"\
" --color=bg+:#373b41,fg+:#,hl+:#"\
" --color=info:#A36AC7,border:#A36AC7,prompt:#198844"\
" --color=pointer:#3971ED,marker:#,spinner:#,header:#CC342B"
