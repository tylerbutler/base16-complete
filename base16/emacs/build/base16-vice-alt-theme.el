;; base16-vice-alt-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Thomas Leon Highbaugh
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-vice-alt-theme-colors
  '(:base00 "#1c1c1c"
    :base01 "#282828"
    :base02 "#2c2c2c"
    :base03 "#323232"
    :base04 "#3c3c3c"
    :base05 "#555555"
    :base06 "#b6b6b6"
    :base07 "#d1d1d1"
    :base08 "#ff3d81"
    :base09 "#F67544"
    :base0A "#ffff73"
    :base0B "#44ffdd"
    :base0C "#00caff"
    :base0D "#2fb1d4"
    :base0E "#8265ff"
    :base0F "#F83D80")
  "All colors for Base16 Vice Alt are defined here.")

;; Define the theme
(deftheme base16-vice-alt)

;; Add all the faces to the theme
(base16-theme-define 'base16-vice-alt base16-vice-alt-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-vice-alt)

(provide 'base16-vice-alt-theme)

;;; base16-vice-alt-theme.el ends here
