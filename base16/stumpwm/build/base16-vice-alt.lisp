(progn
  ;; Base16 Vice Alt
  ;; Author: Thomas Leon Highbaugh

  (stumpwm:set-fg-color "#3f4859")
  (stumpwm:set-bg-color "#1b1d24")
  (stumpwm:set-border-color "#323643")
  (stumpwm:set-focus-color "#3f4859")
  (stumpwm:set-unfocus-color "#1b1d24")

  (setf stumpwm:*mode-line-foreground-color* "#8265ff"
	stumpwm:*mode-line-background-color* "#282b36"
	stumpwm:*mode-line-border-color* "#323643")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#1b1d24"
	(car (last stumpwm:*colors*)) "#323643")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
