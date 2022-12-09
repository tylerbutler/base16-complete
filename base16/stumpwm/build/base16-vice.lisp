(progn
  ;; Base16 Vice Dark
  ;; Author: Thomas Leon Highbaugh

  (stumpwm:set-fg-color "#555e70")
  (stumpwm:set-bg-color "#17191E")
  (stumpwm:set-border-color "#383a47")
  (stumpwm:set-focus-color "#555e70")
  (stumpwm:set-unfocus-color "#17191E")

  (setf stumpwm:*mode-line-foreground-color* "#00f6d9"
	stumpwm:*mode-line-background-color* "#22262d"
	stumpwm:*mode-line-border-color* "#383a47")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#17191E"
	(car (last stumpwm:*colors*)) "#383a47")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
