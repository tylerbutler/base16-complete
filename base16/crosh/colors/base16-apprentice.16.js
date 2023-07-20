// Base16 Apprentice
// Scheme: romainl

var color_scheme = {
        'base00': '#262626',
        'base01': '#AF5F5F',
        'base02': '#5F875F',
        'base03': '#87875F',
        'base04': '#5F87AF',
        'base05': '#5F5F87',
        'base06': '#5F8787',
        'base07': '#6C6C6C',
        'base08': '#444444',
        'base09': '#FF8700',
        'base0A': '#87AF87',
        'base0B': '#FFFFAF',
        'base0C': '#87AFD7',
        'base0D': '#8787AF',
        'base0E': '#5FAFAF',
        'base0F': '#BCBCBC',
};

term_.prefs_.set('background-color', color_scheme.base00);
term_.prefs_.set('foreground-color', color_scheme.base05);
term_.prefs_.set('cursor-color', "rgba(95, 95, 135, 0.5)");

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
