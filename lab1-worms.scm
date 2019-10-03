
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
  (cons 1 (cons 2 (cons 3 (cons 4 null)))))

(define (tdaPlayer posX posY life turn)
  (cons 1 (cons 2 (cons 3 (cons 4 null)))))

(define (tdaShoot angle pressure)
  (cons angle pressure))