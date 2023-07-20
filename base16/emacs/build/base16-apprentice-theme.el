;; base16-apprentice-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: romainl
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-apprentice-theme-colors
  '(:base00 "#262626"
    :base01 "#AF5F5F"
    :base02 "#5F875F"
    :base03 "#87875F"
    :base04 "#5F87AF"
    :base05 "#5F5F87"
    :base06 "#5F8787"
    :base07 "#6C6C6C"
    :base08 "#444444"
    :base09 "#FF8700"
    :base0A "#87AF87"
    :base0B "#FFFFAF"
    :base0C "#87AFD7"
    :base0D "#8787AF"
    :base0E "#5FAFAF"
    :base0F "#BCBCBC")
  "All colors for Base16 Apprentice are defined here.")

;; Define the theme
(deftheme base16-apprentice)

;; Add all the faces to the theme
(base16-theme-define 'base16-apprentice base16-apprentice-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-apprentice)

(provide 'base16-apprentice-theme)

;;; base16-apprentice-theme.el ends here
