# Scheme name: Humanoid light
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
" --color=bg:#f8f8f2,fg:#232629,hl:#ff3d00"\
" --color=bg+:#deded8,fg+:#,hl+:#"\
" --color=info:#700f98,border:#700f98,prompt:#388e3c"\
" --color=pointer:#0082c9,marker:#,spinner:#,header:#b0151a"
