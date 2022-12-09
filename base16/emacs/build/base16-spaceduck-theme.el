;; base16-spaceduck-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Guillermo Rodriguez (pineapplegiant)
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-spaceduck-theme-colors
  '(:base00 "#000000"
    :base01 "#5ccc96"
    :base02 "#b3a1e6"
    :base03 "#686f9a"
    :base04 "#00a3cc"
    :base05 "#686f9a"
    :base06 "#f2ce00"
    :base07 "#f0f1ce"
    :base08 "#e33400"
    :base09 "#e33400"
    :base0A "#b3a1e6"
    :base0B "#5ccc96"
    :base0C "#7a5ccc"
    :base0D "#00a3cc"
    :base0E "#f2ce00"
    :base0F "#7a5ccc")
  "All colors for Base16 Spaceduck are defined here.")

;; Define the theme
(deftheme base16-spaceduck)

;; Add all the faces to the theme
(base16-theme-define 'base16-spaceduck base16-spaceduck-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-spaceduck)

(provide 'base16-spaceduck-theme)

;;; base16-spaceduck-theme.el ends here
