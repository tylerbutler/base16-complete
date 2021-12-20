(progn
  ;; Base16 Spaceduck
  ;; Author: Guillermo Rodriguez (pineapplegiant)

  (stumpwm:set-fg-color "#00a3cc")
  (stumpwm:set-bg-color "#000000")
  (stumpwm:set-border-color "#686f9a")
  (stumpwm:set-focus-color "#00a3cc")
  (stumpwm:set-unfocus-color "#000000")

  (setf stumpwm:*mode-line-foreground-color* "#f2ce00"
	stumpwm:*mode-line-background-color* "#5ccc96"
	stumpwm:*mode-line-border-color* "#686f9a")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#000000"
	(car (last stumpwm:*colors*)) "#686f9a")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
