// Base16 Vice Dark
// Scheme: Thomas Leon Highbaugh

var color_scheme = {
        'base00': '#17191E',
        'base01': '#22262d',
        'base02': '#3c3f4c',
        'base03': '#383a47',
        'base04': '#555e70',
        'base05': '#8b9cbe',
        'base06': '#B2BFD9',
        'base07': '#f4f4f7',
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
term_.prefs_.set('cursor-color', "rgba(139, 156, 190, 0.5)");

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
