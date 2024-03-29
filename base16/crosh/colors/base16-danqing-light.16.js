// Base16 DanQing Light
// Scheme: Wenhan Zhu (Cosmos) (zhuwenhan950913@gmail.com)

var color_scheme = {
        'base00': '#fcfefd',
        'base01': '#ecf6f2',
        'base02': '#e0f0eF',
        'base03': '#cad8d2',
        'base04': '#9da8a3',
        'base05': '#5a605d',
        'base06': '#434846',
        'base07': '#2d302f',
        'base08': '#F9906F',
        'base09': '#B38A61',
        'base0A': '#F0C239',
        'base0B': '#8AB361',
        'base0C': '#30DFF3',
        'base0D': '#B0A4E3',
        'base0E': '#CCA4E3',
        'base0F': '#CA6924',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(90, 96, 93, 0.5)");

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
