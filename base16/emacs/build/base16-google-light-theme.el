;; base16-google-light-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Seth Wright (http://sethawright.com)
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-google-light-theme-colors
  '(:base00 "#ffffff"
    :base01 "#e0e0e0"
    :base02 "#c5c8c6"
    :base03 "#b4b7b4"
    :base04 "#969896"
    :base05 "#373b41"
    :base06 "#282a2e"
    :base07 "#1d1f21"
    :base08 "#CC342B"
    :base09 "#F96A38"
    :base0A "#FBA922"
    :base0B "#198844"
    :base0C "#3971ED"
    :base0D "#3971ED"
    :base0E "#A36AC7"
    :base0F "#3971ED")
  "All colors for Base16 Google Light are defined here.")

;; Define the theme
(deftheme base16-google-light)

;; Add all the faces to the theme
(base16-theme-define 'base16-google-light base16-google-light-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-google-light)

(provide 'base16-google-light-theme)

;;; base16-google-light-theme.el ends here
