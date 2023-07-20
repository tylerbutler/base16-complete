(progn
  ;; Base16 Vice Alt
  ;; Author: Thomas Leon Highbaugh

  (stumpwm:set-fg-color "#3c3c3c")
  (stumpwm:set-bg-color "#1c1c1c")
  (stumpwm:set-border-color "#323232")
  (stumpwm:set-focus-color "#3c3c3c")
  (stumpwm:set-unfocus-color "#1c1c1c")

  (setf stumpwm:*mode-line-foreground-color* "#8265ff"
	stumpwm:*mode-line-background-color* "#282828"
	stumpwm:*mode-line-border-color* "#323232")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#1c1c1c"
	(car (last stumpwm:*colors*)) "#323232")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
