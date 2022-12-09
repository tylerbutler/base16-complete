(progn
  ;; Base16 DanQing Light
  ;; Author: Wenhan Zhu (Cosmos) (zhuwenhan950913@gmail.com)

  (stumpwm:set-fg-color "#9da8a3")
  (stumpwm:set-bg-color "#fcfefd")
  (stumpwm:set-border-color "#cad8d2")
  (stumpwm:set-focus-color "#9da8a3")
  (stumpwm:set-unfocus-color "#fcfefd")

  (setf stumpwm:*mode-line-foreground-color* "#CCA4E3"
	stumpwm:*mode-line-background-color* "#ecf6f2"
	stumpwm:*mode-line-border-color* "#cad8d2")

  ;; Set *colors*
  ;; Currently only the black and white colors are changed
  (setf (car stumpwm:*colors*) "#fcfefd"
	(car (last stumpwm:*colors*)) "#cad8d2")
  ;; Toggle the mode line so that changes are applied
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head))
  (stumpwm:toggle-mode-line (stumpwm:current-screen) (stumpwm:current-head)))
       
