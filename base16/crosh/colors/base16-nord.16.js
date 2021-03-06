// Base16 Nord
// Scheme: arcticicestudio

var color_scheme = {
        'base00': '#2E3440',
        'base01': '#3B4252',
        'base02': '#434C5E',
        'base03': '#4C566A',
        'base04': '#D8DEE9',
        'base05': '#E5E9F0',
        'base06': '#ECEFF4',
        'base07': '#8FBCBB',
        'base08': '#BF616A',
        'base09': '#D08770',
        'base0A': '#EBCB8B',
        'base0B': '#A3BE8C',
        'base0C': '#88C0D0',
        'base0D': '#81A1C1',
        'base0E': '#B48EAD',
        'base0F': '#5E81AC',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(229, 233, 240, 0.5)");

term_.prefs_.set('color-palette-overrides',
                        [color_scheme.base00,
                        color_scheme.base08,
                        color_scheme.base0B,
                        color_scheme.base0A,
                        color_scheme.base0D,
                        color_scheme.base0E,
                        color_scheme.base0C,
                        color_scheme.base05,
                        color_scheme.base03,
                        color_scheme.base09,
                        color_scheme.base01,
                        color_scheme.base02,
                        color_scheme.base04,
                        color_scheme.base06,
                        color_scheme.base0F,
                        color_scheme.base07]);
