# Scheme name: Humanoid dark
# Scheme system: 
# Scheme author: Thomas (tasmo) Friese
# Template author: Tinted Theming (https://github.com/tinted-theming)

set -l FZF_NON_COLOR_OPTS

for arg in (echo $FZF_DEFAULT_OPTS | tr " " "\n")
    if not string match -q -- "--color*" $arg
        set -a FZF_NON_COLOR_OPTS $arg
    end
end

set -Ux FZF_DEFAULT_OPTS "$FZF_NON_COLOR_OPTS"\
" --color=bg:#232629,fg:#f8f8f2,hl:#ff9505"\
" --color=bg+:#484e54,fg+:#,hl+:#"\
" --color=info:#f15ee3,border:#f15ee3,prompt:#02d849"\
" --color=pointer:#00a6fb,marker:#,spinner:#,header:#f11235"
