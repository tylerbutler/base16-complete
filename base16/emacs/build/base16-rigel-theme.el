;; base16-rigel-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Alexander Keliris
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-rigel-theme-colors
  '(:base00 "#00384d"
    :base01 "#9cf087"
    :base02 "#ffcc1b"
    :base03 "#517f8d"
    :base04 "#7eb2dd"
    :base05 "#77929e"
    :base06 "#fb94ff"
    :base07 "#e6e6dc"
    :base08 "#c43061"
    :base09 "#ff5a67"
    :base0A "#f08e48"
    :base0B "#7fc06e"
    :base0C "#00cccc"
    :base0D "#1c8db2"
    :base0E "#c694ff"
    :base0F "#00ffff")
  "All colors for Base16 Rigel are defined here.")

;; Define the theme
(deftheme base16-rigel)

;; Add all the faces to the theme
(base16-theme-define 'base16-rigel base16-rigel-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-rigel)

(provide 'base16-rigel-theme)

;;; base16-rigel-theme.el ends here
