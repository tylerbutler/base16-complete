;; base16-vice-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Thomas Leon Highbaugh
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-vice-theme-colors
  '(:base00 "#181818"
    :base01 "#222222"
    :base02 "#323232"
    :base03 "#3f3f3f"
    :base04 "#666666"
    :base05 "#818181"
    :base06 "#c6c6c6"
    :base07 "#e9e9e9"
    :base08 "#ff29a8"
    :base09 "#85ffe0"
    :base0A "#f0ffaa"
    :base0B "#0badff"
    :base0C "#8265ff"
    :base0D "#00eaff"
    :base0E "#00f6d9"
    :base0F "#ff3d81")
  "All colors for Base16 Vice Dark are defined here.")

;; Define the theme
(deftheme base16-vice)

;; Add all the faces to the theme
(base16-theme-define 'base16-vice base16-vice-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-vice)

(provide 'base16-vice-theme)

;;; base16-vice-theme.el ends here
