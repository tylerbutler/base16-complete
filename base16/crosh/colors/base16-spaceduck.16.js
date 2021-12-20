// Base16 Spaceduck
// Scheme: Guillermo Rodriguez (pineapplegiant)

var color_scheme = {
        'base00': '#000000',
        'base01': '#5ccc96',
        'base02': '#b3a1e6',
        'base03': '#686f9a',
        'base04': '#00a3cc',
        'base05': '#686f9a',
        'base06': '#f2ce00',
        'base07': '#f0f1ce',
        'base08': '#e33400',
        'base09': '#e33400',
        'base0A': '#b3a1e6',
        'base0B': '#5ccc96',
        'base0C': '#7a5ccc',
        'base0D': '#00a3cc',
        'base0E': '#f2ce00',
        'base0F': '#7a5ccc',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(104, 111, 154, 0.5)");

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
