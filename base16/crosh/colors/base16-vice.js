// Base16 Vice Dark
// Scheme: Thomas Leon Highbaugh

var color_scheme = {
        'base00': '#181818',
        'base01': '#222222',
        'base02': '#323232',
        'base03': '#3f3f3f',
        'base04': '#666666',
        'base05': '#818181',
        'base06': '#c6c6c6',
        'base07': '#e9e9e9',
        'base08': '#ff29a8',
        'base09': '#85ffe0',
        'base0A': '#f0ffaa',
        'base0B': '#0badff',
        'base0C': '#8265ff',
        'base0D': '#00eaff',
        'base0E': '#00f6d9',
        'base0F': '#ff3d81',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(129, 129, 129, 0.5)");

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
                        color_scheme.base08,
                        color_scheme.base0B,
                        color_scheme.base0A,
                        color_scheme.base0D,
                        color_scheme.base0E,
                        color_scheme.base0C,
                        color_scheme.base07,
                        color_scheme.base09,
                        color_scheme.base0F,
                        color_scheme.base01,
                        color_scheme.base02,
                        color_scheme.base04,
                        color_scheme.base06]);
