;; base16-google-dark-theme.el -- A base16 colorscheme

;;; Commentary:
;; Base16: (https://github.com/tinted-theming/home)

;;; Authors:
;; Scheme: Seth Wright (http://sethawright.com)
;; Template: Kaleb Elwert <belak@coded.io>

;;; Code:

(require 'base16-theme)

(defvar base16-google-dark-theme-colors
  '(:base00 "#1d1f21"
    :base01 "#282a2e"
    :base02 "#373b41"
    :base03 "#969896"
    :base04 "#b4b7b4"
    :base05 "#c5c8c6"
    :base06 "#e0e0e0"
    :base07 "#ffffff"
    :base08 "#CC342B"
    :base09 "#F96A38"
    :base0A "#FBA922"
    :base0B "#198844"
    :base0C "#3971ED"
    :base0D "#3971ED"
    :base0E "#A36AC7"
    :base0F "#3971ED")
  "All colors for Base16 Google Dark are defined here.")

;; Define the theme
(deftheme base16-google-dark)

;; Add all the faces to the theme
(base16-theme-define 'base16-google-dark base16-google-dark-theme-colors)

;; Mark the theme as provided
(provide-theme 'base16-google-dark)

(provide 'base16-google-dark-theme)

;;; base16-google-dark-theme.el ends here
