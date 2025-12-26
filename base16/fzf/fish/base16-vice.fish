# Scheme name: Vice Dark
# Scheme system: 
# Scheme author: Thomas Leon Highbaugh
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#181818,fg:#818181,hl:#85ffe0"\
" --color=bg+:#323232,fg+:#,hl+:#"\
" --color=info:#00f6d9,border:#00f6d9,prompt:#0badff"\
" --color=pointer:#00eaff,marker:#,spinner:#,header:#ff29a8"
