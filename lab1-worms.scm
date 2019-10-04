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

(define (retdaScenario)
  (display "N debe ser menor a X e Y.")
  (newline)
  (display "X, enter, Y, enter, N:")
  (newline)
  (tdaScenario (read) (read) (read))
)

(define (tdaScenario sizeX sizeY numEnemies)
  (if (and (< numEnemies sizeX) (< numEnemies sizeY))
  (cons (cons sizeX sizeY) (cons numEnemies '())) (retdaScenario) )
)

(define (tdaPlayer posX posY life turn)
  (cons (cons x y) (cons life (cons 4 '()))))

(define (tdaShoot angle pressure)
  (cons angle pressure))