; TDA
; A player has:
; * Position in X
; * Position in y
; * Life
; * The turn in 1 or 0
; A scene has:
; * Size of x
; * Size of y
; A shoot has:
; * Angle


(define (tdaScenario x y n)
  (+ x y))

(define (tdaPlayer posX posY life turn)
  (- posX posY))

(define (tdaShoot angle pressure)
  (* angle pressure))