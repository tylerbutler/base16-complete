(progn
  ;; Base16 Rosé Pine Dawn
  ;; Author: Emilia Dunfelt &lt;edun@dunfelt.se&gt;

  (stumpwm:set-fg-color "#797593")
  (stumpwm:set-bg-color "#faf4ed")
  (stumpwm:set-border-color "#9893a5")
  (stumpwm:set-focus-color "#797593")
  (stumpwm:set-unfocus-color "#faf4ed")

  (setf stumpwm:*mode-line-foreground-color* "#ea9d34"
	stumpwm:*mode-line-background-color* "#fffaf3"
	stumpwm:*mode-line-border-color* "#9893a5")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#faf4ed"
	(car (last stumpwm:*colors*)) "#9893a5")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
